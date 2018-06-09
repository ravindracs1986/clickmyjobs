package com.clickmyjobs.portal.persist.repo;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.RepositoryDefinition;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.clickmyjobs.portal.core.GenericRepository;
import com.clickmyjobs.portal.persist.entity.EmployersJobDetails;
import com.clickmyjobs.portal.persist.entity.UserProfile;

@Repository
@RepositoryDefinition(domainClass=EmloyersServiceRepo.class, idClass=Integer.class)
@Scope("prototype")
@Qualifier("emloyersServiceRepo")
public interface EmloyersServiceRepo extends GenericRepository<EmployersJobDetails> {

	/*@Query("select usr from UserProfile usr where usr.email = :email")
	public UserProfile findbyEmail(@Param("email") String email);*/

}
