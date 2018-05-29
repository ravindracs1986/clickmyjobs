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



@Controller
public class AboutUsController {

	
	 private static final Logger logger = LoggerFactory.getLogger(AboutUsController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	    /*@Autowired
	    private UserService userService;*/

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/about.do", method = RequestMethod.GET)
	    public ModelAndView aboutUs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("about");
	    }

	    @RequestMapping(value = "/jobpage.do", method = RequestMethod.GET)
	    public ModelAndView jobPage() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("job-page");
	    }
	    
	    @RequestMapping(value = "/jobdetails.do", method = RequestMethod.GET)
	    public ModelAndView jobDetails() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("job-details");
	    }

	    @RequestMapping(value = "/resume.do", method = RequestMethod.GET)
	    public ModelAndView resume() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("resume");
	    }
	    
	    
	   

	    @RequestMapping(value = "/privacypolicy.do", method = RequestMethod.GET)
	    public ModelAndView privacypolicy() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("privacy-policy");
	    }
	    
	    @RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	    public ModelAndView faq() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("faq");
	    }

	    @RequestMapping(value = "/pricing.do", method = RequestMethod.GET)
	    public ModelAndView browseResumes() {
	    	System.out.println("jobalerts jobalerts##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("pricing");
	    }
	   
	    @RequestMapping(value = "/contact.do", method = RequestMethod.GET)
	    public ModelAndView contactUs() {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("contact");
	    }
}
