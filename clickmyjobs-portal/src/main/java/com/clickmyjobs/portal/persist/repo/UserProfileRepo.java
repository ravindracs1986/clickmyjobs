package com.clickmyjobs.portal.persist.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clickmyjobs.portal.persist.entity.User;
import com.clickmyjobs.portal.persist.entity.UserProfile;


public interface UserProfileRepo extends JpaRepository<UserProfile, Long> {

}
