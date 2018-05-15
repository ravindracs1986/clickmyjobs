package com.clickmyjobs.portal.web.controller;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.clickmyjobs.portal.service.UserService;

@Controller
public class EmployersController {

	
	 private static final Logger logger = LoggerFactory.getLogger(EmployersController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	    @Autowired
	    private UserService userService;

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/addjobs.do", method = RequestMethod.GET)
	    public ModelAndView addJobs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("post-job");
	    }

	    @RequestMapping(value = "/managejobs.do", method = RequestMethod.GET)
	    public ModelAndView manageJobs() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-jobs");
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
	    
	   
	    
}
