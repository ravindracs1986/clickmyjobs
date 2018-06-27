package com.clickmyjobs.portal.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.clickmyjobs.portal.core.GenericRepository;
import com.clickmyjobs.portal.persist.entity.EmployersJobDetails;
import com.clickmyjobs.portal.persist.entity.ResumeDetails;
import com.clickmyjobs.portal.persist.entity.SkillsDetails;
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.persist.repo.CandidateServiceRepo;
import com.clickmyjobs.portal.persist.repo.CandidateSkillServiceRepo;
import com.clickmyjobs.portal.persist.repo.EmloyersServiceRepo;
import com.clickmyjobs.portal.persist.repo.UserProfileRepo;


@Service("candidateSkillService")
@Scope("prototype")
@Qualifier("candidateSkillService")
@Transactional
public class CandidateSkillService extends com.clickmyjobs.portal.core.AbstractService<SkillsDetails,Integer>{
	
	private static final Logger log = LoggerFactory.getLogger(CandidateSkillService.class);
	
	@Autowired
	CandidateSkillServiceRepo candidateSkillServiceRepo;
	
	@Override
	public GenericRepository<SkillsDetails> primaryDao() {
		return candidateSkillServiceRepo;
	}
	
	/*@Transactional(readOnly=false,rollbackFor=Exception.class)
	public ResumeDetails saveResumeDetails(ResumeDetails resumeDetails){
		log.info("CandidateService saving sql ");
		ResumeDetails resume= candidateServiceRepo.save(resumeDetails);
		return resume;
	}*/	
	/*
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public List<EmployersJobDetails> getJobDetails(Long profileId){
		log.info("EmployersJobDetails saving sql ");
		
		
		List<EmployersJobDetails> jobDetails= emloyersServiceRepo.getJobDetails(profileId);
		return jobDetails;
	}	*/

}
