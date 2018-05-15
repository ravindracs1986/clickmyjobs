package com.clickmyjobs.portal.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
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
import com.clickmyjobs.portal.validators.UserFormValidator;

@Controller
@RequestMapping("/users")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private DozerBeanMapper mapper;

    @Autowired
    private UserService userService;

    @Autowired
    private MessageSource ms;
    
   /* @Autowired
    private UserFormValidator userValidator;
    
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
       binder.addValidators(userValidator);
    }*/
    
    
   /* @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String resiterUser(@Valid @ModelAttribute("userFormDto")UserFormDto userFormDto, 
    	      BindingResult result, ModelMap model) {
    	logger.info("register controller starts");
        
    	
    	 if (result.hasErrors()) {
    		 logger.info("errors-->" +result.hasErrors());
             return "my-account";
          }
    	 return "home";
    }*/
    
    
    
    
   /* @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
        logger.debug("redirect to home page");
        return new ModelAndView("home");
    }

   
    @RequestMapping(value = "/usersList", method = RequestMethod.GET)
    public @ResponseBody List<UserDto> usersList() {
        logger.debug("get json user list");
        return userService.findAll();
    }
    
    
    @RequestMapping(value = "users", method = RequestMethod.GET)
    public ModelAndView getUsers() {
        logger.debug("display user list");
        ModelAndView mv= new ModelAndView("usersView");
        mv.addObject("usersModel", userService.findAll());
        return mv;
    }*/
    
}    

 
