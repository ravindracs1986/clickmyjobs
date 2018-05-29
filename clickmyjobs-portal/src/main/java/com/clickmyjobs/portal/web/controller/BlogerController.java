package com.clickmyjobs.portal.web.controller;

import java.util.List;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
//@Scope("request")
public class BlogerController {

    private static final Logger logger = LoggerFactory.getLogger(BlogerController.class);

    @Autowired
    private DozerBeanMapper mapper;



    @Autowired
    private MessageSource ms;
    
    
    
    @RequestMapping(value = "/blog.do", method = RequestMethod.GET)
    public ModelAndView blog() {
    	System.out.println("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("blog");
    }

    @RequestMapping(value = "/single-post.do", method = RequestMethod.GET)
    public ModelAndView singlePost() {
    	System.out.println("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("single-post");
    }
   
    @RequestMapping(value = "/blog-full-post.do", method = RequestMethod.GET)
    public ModelAndView multipalPost() {
    	System.out.println("testt homeee##########");
        logger.debug("redirect to success page");
        return new ModelAndView("blog-full-width");
    }
    
    
   
    
}    

 
