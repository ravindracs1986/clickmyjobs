package com.clickmyjobs.portal.persist.entity;


import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.clickmyjobs.portal.core.AbstractEntity;



@Entity
@Table(name = "profile")
public class UserProfile extends AbstractEntity implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "userId", nullable = false)
	private Long userId;

	@Column(name = "name", nullable = false)
	private String name;

	@Column(name = "phone", nullable = false)
	private String phone;

	@Column(name = "email", nullable = false)
	private String email;

	@Column(name = "password", nullable = false)
	private String password;

	@Column(name = "country", nullable = false)
	private String country;
	
	@Column(name = "userType")
	private String userType;

	@Column(name = "status", nullable = false)
	private String status;
	
	@Column(name = "otp", nullable = false)
	private String otp;
	
	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	@Override
	public Timestamp getCrtTs() {
		return this.crtTs;
	}

	@Override
	public void setCrtTs(Timestamp crtTs) {
		this.crtTs = crtTs;
		
	}
	
	

}
