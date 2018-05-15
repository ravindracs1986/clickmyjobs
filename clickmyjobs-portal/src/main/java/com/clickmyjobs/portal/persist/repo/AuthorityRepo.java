package com.clickmyjobs.portal.persist.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.clickmyjobs.portal.persist.entity.Authority;

public interface AuthorityRepo extends JpaRepository<Authority, Long> {

}