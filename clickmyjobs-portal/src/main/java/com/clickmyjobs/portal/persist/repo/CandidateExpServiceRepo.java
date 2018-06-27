package com.clickmyjobs.portal.persist.repo;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.RepositoryDefinition;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.clickmyjobs.portal.core.GenericRepository;
import com.clickmyjobs.portal.persist.entity.EmployersJobDetails;
import com.clickmyjobs.portal.persist.entity.ResumeDetails;
import com.clickmyjobs.portal.persist.entity.UserProfile;
import com.clickmyjobs.portal.persist.entity.WorkExpDetails;

@Repository
@RepositoryDefinition(domainClass=CandidateExpServiceRepo.class, idClass=Integer.class)
@Scope("prototype")
@Qualifier("candidateExpServiceRepo")
public interface CandidateExpServiceRepo extends GenericRepository<WorkExpDetails> {

	//@Query("select jobs from EmployersJobDetails jobs where jobs.userId = :userId")
	//public List<EmployersJobDetails> getJobDetails(@Param("userId") Long userId);
	
	

}
