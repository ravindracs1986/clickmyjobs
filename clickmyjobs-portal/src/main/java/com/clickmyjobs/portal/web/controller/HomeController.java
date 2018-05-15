package com.clickmyjobs.portal.web.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.clickmyjobs.portal.service.UserService;
import com.clickmyjobs.portal.service.dto.UserDto;
import com.clickmyjobs.portal.service.dto.UserFormDto;
import com.clickmyjobs.portal.utils.SendMyJobsEmail;
import com.clickmyjobs.portal.validators.UserFormValidator;

@Controller
//@Scope("request")
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private DozerBeanMapper mapper;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageSource ms;
    
    @Autowired
    private UserFormValidator userValidator;
    
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
       binder.addValidators(userValidator);
       //binder.setValidator(this.userValidator);
	   //super.bindingPreparation(binder);
    }
    
    @RequestMapping(value = { "/", "/index.do" }, method = RequestMethod.GET)
    public ModelAndView index() {
    	logger.info("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("index");
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
        	  SendMyJobsEmail sendMail =new SendMyJobsEmail(userFormDto.getEmail(),"MyJobs Profile created","Profile created");
        	  
        	  ModelAndView res =new ModelAndView("profile-activation"); 
        	  res.addObject("email",userFormDto.getEmail());
        	  return res;
          }
    	
    }
    
    
    @RequestMapping(value = {"/activation.do" }, method = RequestMethod.GET)
    public ModelAndView profileActivation() {
    	logger.info("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("profile-activation");
    }
    
}    

 
