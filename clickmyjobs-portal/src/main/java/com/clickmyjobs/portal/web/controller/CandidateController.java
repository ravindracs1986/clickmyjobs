package com.clickmyjobs.portal.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.service.dto.AddJobDto;
import com.clickmyjobs.portal.service.dto.AddResumeDto;
import com.clickmyjobs.portal.service.dto.SkillsDto;
import com.clickmyjobs.portal.service.dto.WorkExpDto;



@Controller
public class CandidateController {

	
	 private static final Logger logger = LoggerFactory.getLogger(CandidateController.class);

	    @Autowired
	    private DozerBeanMapper mapper;

	

	    @Autowired
	    private MessageSource ms;
	    
	    
	    
	    @RequestMapping(value = "/addResume.do", method = RequestMethod.GET)
	    public ModelAndView addResume(@ModelAttribute("addResumeDto")AddResumeDto addResumeDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	System.out.println("addResume homeee##########");
	        logger.debug("redirect to success page");
	        return new ModelAndView("add-resume");
	    }

	    @RequestMapping(value = "/addResume.do", method = RequestMethod.POST)
	    public ModelAndView addResumes(@ModelAttribute("addResumeDto")AddResumeDto addResumeDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
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
	    
	    
	    @RequestMapping(value = "/resume.do", method = RequestMethod.GET)
	    public String resume(@ModelAttribute("addResumeDto")AddResumeDto addResumeDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	System.out.println("jobalerts jobalerts##########");
	    	session.setAttribute("addResumeDto", getDummySkillsListContainer());
	    	if( session.getAttribute("addResumeDto") == null )
	            session.setAttribute("addResumeDto", getDummySkillsListContainer());
	    	model.addAttribute("addResumeDto", (AddResumeDto)session.getAttribute("addResumeDto"));
	    	
	    	model.addAttribute("cp", request.getContextPath());
	        logger.info("redirect to success page"+request.getContextPath());
	        return "resume";
	        //return new ModelAndView("resume");
	    }
	    
	    @RequestMapping(value = "/resume.do", method = RequestMethod.POST)
	    public ModelAndView SubmitResume(@ModelAttribute("addResumeDto")AddResumeDto addResumeDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	System.out.println("jobalerts jobalerts##########");
	    	for( SkillsDto p : addResumeDto.getSkillsList() ) {
	            //System.out.println("Name: " + p.getName());
	            //System.out.println("Age: " + p.getAge());
	        }
	    	 session.setAttribute("addResumeDto",addResumeDto);
	        logger.debug("redirect to success page");
	        return new ModelAndView("resume");
	    }
	    
	    private AddResumeDto getDummySkillsListContainer() {
	        List<SkillsDto> skillsList = new ArrayList<SkillsDto>();
	        List<WorkExpDto> workExpList = new ArrayList<WorkExpDto>();
	        for( int i=0; i<1; i++ ) {
	        	skillsList.add( new SkillsDto());
	        	workExpList.add( new WorkExpDto());
	        }
	        return new AddResumeDto(skillsList,workExpList);
	    }
	    
	   /* private AddResumeDto getDummyWorkExpListContainer() {
	        List<WorkExpDto> workExpList = new ArrayList<WorkExpDto>();
	        for( int i=0; i<1; i++ ) {
	        	workExpList.add( new WorkExpDto() );
	        }
	        return new AddResumeDto(workExpList);
	    }*/
	    
	    
}
