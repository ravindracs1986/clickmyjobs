package com.clickmyjobs.portal.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.clickmyjobs.portal.persist.entity.UserProfile;



@Controller
public class EmployersController {

	
	 private static final Logger logger = LoggerFactory.getLogger(EmployersController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	    /*@Autowired
	    private UserService userService;*/

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/addjobs.do", method = RequestMethod.GET)
	    public ModelAndView addJobs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("post-job");
	    }

	    @RequestMapping(value = "/managejobs.do", method = RequestMethod.GET)
	    public ModelAndView manageJobs(HttpSession session,HttpServletRequest request, HttpServletResponse response) {
	    	if(session.getAttribute("userObject")!=null){
	    		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    		 if(userProfile.getUserType().equalsIgnoreCase("EMP")){
	    			ModelAndView responseObj =new ModelAndView("manage-jobs");
					responseObj.addObject("userType", "EMP");
					return responseObj;
				}
	    	}else{
	    		return new ModelAndView("redirect:my-account.do");
	    	}
	        
	    	return new ModelAndView("redirect:index.do");
	        
	    }
	    
	    @RequestMapping(value = "/manageapplications.do", method = RequestMethod.GET)
	    public ModelAndView manageApplications() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-applications");
	    }

	    @RequestMapping(value = "/browseresumes.do", method = RequestMethod.GET)
	    public ModelAndView browseResumes() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("browse-resumes");
	    }
	    
	    @RequestMapping(value = "/empaddjobs.do", method = RequestMethod.GET)
	    public ModelAndView EployerAddJobs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("employer-add-job");
	    }
	    
	    @RequestMapping(value = "/empapplications.do", method = RequestMethod.GET)
	    public ModelAndView empApplications() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("emp-applications");
	    }
	    
	    @RequestMapping(value = "/empdashboard.do", method = RequestMethod.GET)
	    public ModelAndView dashboard() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("employer-profile");
	    } 
	    
	    @RequestMapping(value = "/price.do", method = RequestMethod.GET)
	    public ModelAndView pricing() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        
	        ModelAndView response =new ModelAndView("pricing");
	        response.addObject("userType","EMP");
	        return response;
	        
	       
	    }
	    
	    
	    @RequestMapping(value = "/offers.do", method = RequestMethod.GET)
	    public ModelAndView offers() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        
	        ModelAndView response =new ModelAndView("offers");
	        response.addObject("userType","EMP");
	        return response;
	        
	       
	    } 
	    
}
