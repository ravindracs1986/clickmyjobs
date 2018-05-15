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
public class CandidateController {

	
	 private static final Logger logger = LoggerFactory.getLogger(CandidateController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	    @Autowired
	    private UserService userService;

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
	    public ModelAndView brousejobs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("browse-jobs");
	    }

	    @RequestMapping(value = "/browsecategories.do", method = RequestMethod.GET)
	    public ModelAndView brousecategry() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("browse-categories");
	    }
	    
	    @RequestMapping(value = "/manageresumes.do", method = RequestMethod.GET)
	    public ModelAndView manageresumes() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("manage-resumes");
	    }
	    
}
