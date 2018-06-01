package com.clickmyjobs.portal.web.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionAttributeStore;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.service.UserProfileService;
import com.clickmyjobs.portal.service.dto.UserFormDto;
import com.clickmyjobs.portal.service.dto.UserLoginDto;
import com.clickmyjobs.portal.utils.DateUtil;
import com.clickmyjobs.portal.utils.RandomPasswordGenerator;
import com.clickmyjobs.portal.utils.SendMail;
import com.clickmyjobs.portal.validators.LoginFormValidator;
import com.clickmyjobs.portal.validators.UserFormValidator;

@Controller
//@Scope("request")
//@SessionAttributes("userObject")
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private DozerBeanMapper mapper;

    /*@Autowired
    private UserService userService;*/

    @Autowired
    private UserProfileService userProfileService;
    
    @Autowired
    private MessageSource ms;
    
    @Autowired
    private UserFormValidator userValidator;
    
    @Autowired
    private LoginFormValidator loginValidator;
    
    @InitBinder("userFormDto")
    protected void initBinder(WebDataBinder binder) {
       binder.addValidators(userValidator);
       
    }
    
    @InitBinder("userLoginDto")
    protected void initBinder1(WebDataBinder binder) {
       binder.addValidators(loginValidator);
      
    }
    
    @RequestMapping(value = { "/", "/index.do" }, method = RequestMethod.GET)
    public ModelAndView index(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
    	logger.info("testt homeee##########");
    	ModelAndView res =new ModelAndView("index");
    	if(session.getAttribute("userObject")!=null){
    		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
    		res.addObject("userObject",userProfile);
    	}
    	return res;
    	
    }

    @RequestMapping(value = "/my-account.do", method = RequestMethod.GET)
    public ModelAndView myAccount(UserFormDto userFormDto) {
    	logger.info("GET method of registion or login");
    	//model.addAttribute("userFormDto", new UserFormDto());
    	ModelAndView res =new ModelAndView("my-account");
    	res.addObject("userFormDto",new UserFormDto());
    	return res;
    }
   
    @RequestMapping(value = "/my-account.do", method = RequestMethod.POST)
    public ModelAndView resiterUser(@Valid @ModelAttribute("userFormDto")UserFormDto userFormDto, 
    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response) {
    	logger.info(" POST register controller starts");
        if (result.hasErrors()) {
    		 logger.info("errors-->" +result.hasErrors());
    		 ModelAndView res =new ModelAndView("my-account");
    		 res.addObject("errors","profileError");
         	return res;
             
          }else{
        	  userFormDto.setStatus("INACTIVE");
        	  String loginOtp =new String(RandomPasswordGenerator.generateOTP());
        	  userFormDto.setOtp(loginOtp);
        	 
        	  UserProfile userProfile = mapper.map(userFormDto, UserProfile.class);
        	  userProfile.setCrtTs(DateUtil.convertDate2SqlTimeStamp(new Date()));
        	  userProfileService.create(userProfile);
        	 
        	  
        	  //SendMyJobsEmail sendMail =new SendMyJobsEmail(userFormDto.getEmail(),"MyJobs Profile created","Profile created");
        	  SendMail mail =new SendMail(userFormDto.getEmail(),loginOtp,userFormDto.getName(),"MyJobs Profile created");
        	  
        	  ModelAndView res =new ModelAndView("profile-activation"); 
        	  res.addObject("email",userFormDto.getEmail());
        	  res.addObject("name",userFormDto.getName());
        	  return res;
          }
    	
    }
    
    
    @RequestMapping(value = "/login.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String loginUser(@RequestParam(value = "action", required = true) String action,@Valid @ModelAttribute("userLoginDto")UserLoginDto userLoginDto, 
    		BindingResult result,ModelMap model,HttpServletRequest request, HttpServletResponse response,RedirectAttributes redir) {
    	logger.info(" POST login controller starts");
        
    	ModelAndView res =new ModelAndView("my-account");
    	
    	if(action.equalsIgnoreCase("login")){
    		if (result.hasErrors()) {
    			logger.info("login controller error-->" +result.hasErrors());
    			return "my-account";
    			
    		}else{
    			String email =userLoginDto.getEmail();
    			UserProfile userObject=userProfileService.getUserProfile(email);
    			if(userObject!=null && userObject.getEmail()!=null){
    				String status =userObject.getStatus();
    				String userTpe =userObject.getUserType();
    				if(status.equalsIgnoreCase("INACTIVE")){
    					//popup
    					//ModelAndView prof =new ModelAndView("popup");
						//prof.addObject("usrObj",usrObj);
    					//model.put("usrObj", usrObj);
    					 redir.addFlashAttribute("usrObj",userObject);
    					return "redirect:athenticate.do";
						//return prof;
    					
    				}else{
    					if(userTpe.equalsIgnoreCase("CAN")){
    						model.put("userType", "CAN");
    						 request.getSession().setAttribute("userObject", userObject);
    						//ModelAndView prof =new ModelAndView("candidate-profile");
    						//prof.addObject("userType","CAN");
    						return "candidate-profile";
    					}else if(userTpe.equalsIgnoreCase("EMP")){
    						request.getSession().setAttribute("userObject", userObject);
    						model.put("userType", "EMP");
    						ModelAndView prof =new ModelAndView("employer-profile");
    						prof.addObject("userType","EMP");
    		    			return "employer-profile";
    					}else{
    						//admin
    					}
    					
    				}
    				
    				
    				
    			}else{
    				//profile not found here logic
    				
    			}
    			
    			
    			
    		}
    		
         	
    		
    	}else if(action.equalsIgnoreCase("forgotpassword")){
    		
    		
    		
    	}
    	
    	return "my-account";
    	
    	
    }
    
    
    
    
    @RequestMapping(value = {"/activation.do" }, method = RequestMethod.GET)
    public ModelAndView profileActivation() {
    	logger.info("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("profile-activation");
    }
    
    @RequestMapping(value = {"/changepassword.do" }, method = RequestMethod.GET)
    public ModelAndView changePassword() {
    	logger.info("testt homeee##########");
        logger.debug("redirect to success page");
        ModelAndView response =new ModelAndView("change-password");
        response.addObject("userType","EMP");
        return response;
    }
    
    @RequestMapping(value = {"/logout.do" }, method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session,WebRequest webrequest,SessionStatus status,HttpServletRequest request, HttpServletResponse response) {
    	logger.info("testt homeee##########");
        logger.debug("redirect to success page");
        status.setComplete();
        request.getSession().removeAttribute("userObject");
        //store.cleanupAttribute(request, "userObject");
        return new ModelAndView("index");
    }
    
    @RequestMapping(value = {"/update-profile.do" }, method = RequestMethod.GET)
    public ModelAndView updateProfile() {
    	
        logger.debug("redirect to success page");
        ModelAndView response =new ModelAndView("user");
        response.addObject("userType","EMP");
        return response;
       
    }
    
    @RequestMapping(value = {"/athenticate.do" }, method = RequestMethod.GET)
    public ModelAndView getAthenticate(HttpServletRequest request, HttpServletResponse response,Model model) {
    	
    	UserProfile usrObj = (UserProfile)model.asMap().get("usrObj");
    	ModelAndView prof =new ModelAndView("popup");
		prof.addObject("usrObj",usrObj);
		return prof;
      
       
    }
    
    @RequestMapping(value = {"/athenticate.do" },params="validate", method = RequestMethod.POST)
    public ModelAndView athenticate(UserFormDto userFormDto,HttpServletRequest request, HttpServletResponse response) {
    	ModelAndView authentication =new ModelAndView("popup");
        logger.debug("redirect to success page");
        if(userFormDto!=null && userFormDto.getUserType()!=null){
        if(userFormDto.getUserType().equalsIgnoreCase("CAN")){
			ModelAndView prof =new ModelAndView("candidate-profile");
			prof.addObject("userType","CAN");
			return prof;
		}else if(userFormDto.getUserType().equalsIgnoreCase("EMP")){
			ModelAndView prof =new ModelAndView("employer-profile");
			prof.addObject("userType","EMP");
			return prof;
		}
        
        }
       
        return authentication;
       
    }
    
    @RequestMapping(value={"/otpCancel" },method=RequestMethod.GET)
    public String cancelUpdateUser(HttpServletRequest request, HttpServletResponse response,ModelMap modelMap) {
    	 logger.debug("cancel button click");
        return "redirect:login.do";
    }
    
    @RequestMapping(value={"/profile.do" },method=RequestMethod.GET)
    public ModelAndView goTOProfile(HttpSession session,HttpServletRequest request, HttpServletResponse response,ModelMap model) {
    	 logger.debug("profile coming from home ");
    	 ModelAndView prof =null;
    	 if(session.getAttribute("userObject")!=null){
     		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
     		if(userProfile.getUserType().equalsIgnoreCase("CAN")){
     			prof =new ModelAndView("candidate-profile");
     			prof.addObject("userType","CAN");
    			
			}else if(userProfile.getUserType().equalsIgnoreCase("EMP")){
				prof =new ModelAndView("employer-profile");
				prof.addObject("userType", "EMP");
				
			}
     	}
    	 return prof;
    }
}    

 
