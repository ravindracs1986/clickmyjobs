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
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.persist.repo.EmloyersServiceRepo;
import com.clickmyjobs.portal.persist.repo.UserProfileRepo;


@Service("emloyersService")
@Scope("prototype")
@Qualifier("emloyersService")
@Transactional
public class EmloyersService extends com.clickmyjobs.portal.core.AbstractService<EmployersJobDetails,Integer>{
	
	private static final Logger log = LoggerFactory.getLogger(EmloyersService.class);
	
	@Autowired
	EmloyersServiceRepo emloyersServiceRepo;
	
	@Override
	public GenericRepository<EmployersJobDetails> primaryDao() {
		return emloyersServiceRepo;
	}
	
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public EmployersJobDetails saveJobDetails(EmployersJobDetails jobDetails){
		log.info("EmployersJobDetails saving sql ");
		
		
		EmployersJobDetails jobDetail= emloyersServiceRepo.save(jobDetails);
		return jobDetail;
	}	
	
	@Transactional(readOnly=false,rollbackFor=Exception.class)
	public List<EmployersJobDetails> getJobDetails(Long profileId){
		log.info("EmployersJobDetails saving sql ");
		
		
		List<EmployersJobDetails> jobDetails= emloyersServiceRepo.getJobDetails(profileId);
		return jobDetails;
	}	

}
