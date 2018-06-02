package com.clickmyjobs.portal.web.controller;

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
public class CandidateController {

	
	 private static final Logger logger = LoggerFactory.getLogger(CandidateController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/addResume.do", method = RequestMethod.GET)
	    public ModelAndView addResume() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("add-resume");
	    }

	    @RequestMapping(value = "/jobalerts.do", method = RequestMethod.GET)
	    public ModelAndView jobalerts() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("job-alerts");
	    }
	    
	    @RequestMapping(value = "/browsejobs.do", method = RequestMethod.GET)
	    public ModelAndView brousejobs(HttpSession session) {
	        ModelAndView response =new ModelAndView("browse-jobs");
	       
	    	if(session.getAttribute("userObject")!=null){
	    		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    		response.addObject("userObject",userProfile);
	    	}
	    	return response;
	        
	        
	    }

	    @RequestMapping(value = "/browsecategories.do", method = RequestMethod.GET)
	    public ModelAndView brousecategry(HttpSession session) {
	    	
	        ModelAndView response =new ModelAndView("browse-categories");
		    if(session.getAttribute("userObject")!=null){
	    		UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    		response.addObject("userObject",userProfile);
	    	}
	    	return response;
	        
	    }
	    
	    @RequestMapping(value = "/manageresumes.do", method = RequestMethod.GET)
	    public ModelAndView manageresumes() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-resumes");
	    }
	    
	    @RequestMapping(value = "/bookmarked.do", method = RequestMethod.GET)
	    public ModelAndView bookmarked() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("bookmarked");
	    }
	    
	    @RequestMapping(value = "/notifications.do", method = RequestMethod.GET)
	    public ModelAndView notifications() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("notifications");
	    }
	    
	    @RequestMapping(value = "/manage-applications.do", method = RequestMethod.GET)
	    public ModelAndView manageApplications() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-applications");
	    }
	    
	    @RequestMapping(value = "/job-alerts.do", method = RequestMethod.GET)
	    public ModelAndView jobAlerts() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("job-alerts");
	    }
	    
	    @RequestMapping(value = "/dashboard.do", method = RequestMethod.GET)
	    public ModelAndView dashboard() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("candidate-profile");
	    } 
	    
}
