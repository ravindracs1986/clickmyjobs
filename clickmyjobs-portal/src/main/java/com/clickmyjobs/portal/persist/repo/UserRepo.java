package com.clickmyjobs.portal.persist.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clickmyjobs.portal.persist.entity.User;


public interface UserRepo extends JpaRepository<User, Long> {

}
