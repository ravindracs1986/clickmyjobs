package com.clickmyjobs.portal.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
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

import com.clickmyjobs.portal.persist.entity.EducationDetails;
import com.clickmyjobs.portal.persist.entity.ResumeDetails;
import com.clickmyjobs.portal.persist.entity.SkillsDetails;
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.persist.entity.WorkExpDetails;
import com.clickmyjobs.portal.service.CandidateExpService;
import com.clickmyjobs.portal.service.CandidateService;
import com.clickmyjobs.portal.service.CandidateSkillService;
import com.clickmyjobs.portal.service.EmloyersService;
import com.clickmyjobs.portal.service.dto.AddJobDto;
import com.clickmyjobs.portal.service.dto.AddResumeDto;
import com.clickmyjobs.portal.service.dto.EducationDto;
import com.clickmyjobs.portal.service.dto.SkillsDto;
import com.clickmyjobs.portal.service.dto.WorkExpDto;
import com.clickmyjobs.portal.utils.DateUtil;



@Controller
public class CandidateController {

	
	 private static final Logger logger = LoggerFactory.getLogger(CandidateController.class);

	    @Autowired
	    private DozerBeanMapper mapper;
	    @Autowired
	    private MessageSource ms;
	    
	    @Autowired
	    private CandidateService candidateService;
	    
	    @Autowired
	    private CandidateSkillService candidateSkillService;
	    @Autowired
	    private CandidateExpService candidateExpService;
	    
	    
	    
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
	    public ModelAndView submitResume(@ModelAttribute("addResumeDto")AddResumeDto addResumeDto, 
	    	      BindingResult result, ModelMap model,HttpServletRequest request, HttpServletResponse response,HttpSession session) {
	    	System.out.println("submitResume jobalerts##########");
	    	 UserProfile userProfile = (UserProfile)session.getAttribute("userObject");
	    	List<SkillsDetails> skillsListObj = new LinkedList<SkillsDetails>();
	    	List<WorkExpDetails> workExpDetailsObj = new LinkedList<WorkExpDetails>();
	    	EducationDetails eduDetails=null;
	    	if(addResumeDto!=null && userProfile!=null){
	    		
	    		//ResumeDetails resumeDetails = mapper.map(addResumeDto, ResumeDetails.class);
	    		ResumeDetails resumeDetails =getResumeDetails(addResumeDto);
	    		if(addResumeDto.getEducation()!=null){
	    			eduDetails = getEducationObject(addResumeDto.getEducation());
	    			eduDetails.setCrtTs(eduDetails.getCrtTs());
	    			eduDetails.setUserId(userProfile.getUserId());
	    			//EducationDetails eduDetails = mapper.map(addResumeDto.getEducation(), EducationDetails.class);
	    		}if(addResumeDto.getWorkExp()!=null){
	    			WorkExpDetails exptemp = getExpObject(addResumeDto.getWorkExp());
	    			exptemp.setResumeDetails(resumeDetails);
	    			workExpDetailsObj.add(exptemp);
	    		}if(addResumeDto.getWorkExpsList()!=null && addResumeDto.getWorkExpsList().size()>0){
	    			for (WorkExpDto workExpDetails : addResumeDto.getWorkExpsList()) {
	    				WorkExpDetails expTemp = getExpObject(workExpDetails);
	    				expTemp.setResumeDetails(resumeDetails);
	    				workExpDetailsObj.add(expTemp);
					}
	    			
	    		}if(addResumeDto.getSkill()!=null){
	    			SkillsDetails skiltemp = getSkillObject(addResumeDto.getSkill());
	    			skiltemp.setSkillResume(resumeDetails);
	    			skillsListObj.add(skiltemp);
	    		}
	    		
	    		if(addResumeDto.getSkillsList()!=null && addResumeDto.getSkillsList().size()>0){
	    			for (SkillsDto skillsDto : addResumeDto.getSkillsList()) {
	    				SkillsDetails skiltemp = getSkillObject(skillsDto);
	    				skiltemp.setSkillResume(resumeDetails);
		    			skillsListObj.add(skiltemp);
					}
	    		}
	    		
	    		resumeDetails.setEducationDetails(eduDetails);
	    		//resumeDetails.setWorkExpDetails(workExpDetailsObj);
	    		//resumeDetails.setSkillsDetails(skillsListObj);
	    		resumeDetails.setUserId(userProfile.getUserId());
	    		resumeDetails.setVisible("Y");
	    		ResumeDetails respData=candidateService.getResumeDetails(userProfile.getUserId());
	    		ResumeDetails resp=null;
	    		if(respData!=null && respData.getResume_id()!=null){
	    		resp=candidateService.update(resumeDetails);
	    		}else{
	    			resp=candidateService.saveResumeDetails(resumeDetails);
	    		}
	    		
	    		
	    		logger.info("Id after saving in db::"+resp.getResume_id());
	    		if(resp!=null && resp.getResume_id()!=null && workExpDetailsObj.size()>0){
	    			for (WorkExpDetails workExpDetailsTemp : workExpDetailsObj) {
	    				workExpDetailsTemp.setCrtTs(workExpDetailsTemp.getCrtTs());
	    				workExpDetailsTemp.setUserId(userProfile.getUserId());
	    				workExpDetailsTemp.setResumeDetails(resumeDetails);
	    				candidateExpService.create(workExpDetailsTemp);
					}
	    		}if(resp!=null && resp.getResume_id()!=null && skillsListObj.size()>0){
	    			for (SkillsDetails skillsDetailsTemp : skillsListObj) {
	    				skillsDetailsTemp.setCrtTs(skillsDetailsTemp.getCrtTs());
	    				skillsDetailsTemp.setUserId(userProfile.getUserId());
	    				skillsDetailsTemp.setSkillResume(resumeDetails);
	    				candidateSkillService.create(skillsDetailsTemp);
					}
	    		}
	    		
	    		
	    	}
	    	
	    	
	    	 session.setAttribute("addResumeDto",addResumeDto);
	        
	        return new ModelAndView("resume");
	    }
	    
	    
	    //get 1st time constructed 
	    
	    private ResumeDetails getResumeDetails(AddResumeDto addResumeDto) {
	    	ResumeDetails detal= new ResumeDetails();
	    	if(addResumeDto!=null){
	    		if(addResumeDto.getLocation()!=null){
	    			detal.setLocation(addResumeDto.getLocation());
	    		}if(addResumeDto.getNotice_period()!=null){
	    			detal.setNotice_period(addResumeDto.getNotice_period());
	    		}if(addResumeDto.getProfession_title()!=null){
	    			detal.setProfession_title(addResumeDto.getProfession_title());
	    		}if(addResumeDto.getProfile_description()!=null){
	    			detal.setProfile_description(addResumeDto.getProfile_description());
	    		}if(addResumeDto.getSalary_expectations()!=null){
	    			detal.setSalary_expectations(addResumeDto.getSalary_expectations());
	    		}if(addResumeDto.getResume_file()!=null){
	    			try {
						detal.setResume_file(addResumeDto.getResume_file().getBytes());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	    		}
	    		detal.setCrtTs(detal.getCrtTs());
	    	}
	    	
	    	
			return detal;
		}

		private SkillsDetails getSkillObject(SkillsDto skill) {
	    	SkillsDetails skil =new SkillsDetails();
	    	
	    	if(skill.getSkill_Name()!=null){
	    		skil.setSkill_Name(skill.getSkill_Name());
	    	}
	    	if(skill.getSkill_percentage()!=null){
	    		skil.setSkill_percentage(skill.getSkill_percentage());
	    	}
	    	return skil;
	    	
		}

		private WorkExpDetails getExpObject(WorkExpDto workExp) {
	    	WorkExpDetails exp =new WorkExpDetails();
	    	if(workExp.getCompany_name()!=null){
	    		exp.setCompany_name(workExp.getCompany_name());
	    	}if(workExp.getCurrent_job()!=null){
	    		exp.setCurrent_job(workExp.getCurrent_job());
	    	}
	    	if(workExp.getDescription()!=null){
	    		exp.setDescription(workExp.getDescription());
	    	}
	    	if(workExp.getTitle()!=null){
	    		exp.setTitle(workExp.getTitle());
	    	}
	    	if(workExp.getDate_form()!=null){
	    		 Date d1=DateUtil.convertStrDateToDate(workExp.getDate_form());
	    		exp.setDate_form(d1);
	    	}
	    	if(workExp.getDate_to()!=null){
	    		 Date d2=DateUtil.convertStrDateToDate(workExp.getDate_to());
	    		exp.setDate_to(d2);
	    	}
	    	
	    	
	    	return exp;
		}

		private EducationDetails getEducationObject(EducationDto education) {
	    	EducationDetails edu =new EducationDetails();
	    	if(education.getDegree()!=null){
	    		edu.setDegree(education.getDegree());
	    	}if(education.getDescription()!=null){
	    		edu.setDescription(education.getDescription());
	    	}if(education.getField_of_Study()!=null){
	    		edu.setField_of_study(education.getField_of_Study());
	    	}if(education.getSchool_or_college()!=null){
	    		edu.setSchool_or_college(education.getSchool_or_college());
	    	}if(education.getFrom_date()!=null){
	    		 Date d1=DateUtil.convertStrDateToDate(education.getFrom_date());
	    		edu.setFrom_date(d1);
	    	}if(education.getTo_date()!=null){
	    		Date d2=DateUtil.convertStrDateToDate(education.getTo_date());
	    		edu.setTo_date(d2);
	    	}
	    	
	    	
			return edu;
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
	    
	 
	    
	    
}
