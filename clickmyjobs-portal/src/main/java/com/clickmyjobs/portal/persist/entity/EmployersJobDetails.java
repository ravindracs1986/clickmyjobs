package com.clickmyjobs.portal.persist.entity;


import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.clickmyjobs.portal.core.AbstractEntity;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table(name = "jobs_details")
public class EmployersJobDetails extends AbstractEntity implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "jobs_details_id", nullable = false)
	private Long jobs_details_id;

	@Column(name = "email", nullable = false)
	private String email;
	
	@Column(name = "job_title", nullable = false)
	private String job_title;
	
	
	@Column(name = "location", nullable = false)
	private String location;

	@Column(name = "category", nullable = false)
	private String category;

	/*@Column(name = "job_tags", nullable = false)
	private Long job_tags;*/

	@Column(name = "description", nullable = false)
	private String description;
	
	@Column(name = "application_email")
	private String application_email;

	@Column(name = "closing_date", nullable = false)
	private Date closing_date;
	
	@Column(name = "company_name", nullable = false)
	private String company_name;
	
	@Column(name = "company_website", nullable = false)
	private String company_website;
	
	@Column(name = "company_discription", nullable = false)
	private String company_discription;
	
	@Column(name = "jd_file", nullable = false)
	private byte[] jd_file;
	
	@Column(name = "userId", nullable = false)
	private Long userId;
	
	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;
	
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="jobs_details_tag", 
				joinColumns={@JoinColumn(name="jobs_details_id")}, 
				inverseJoinColumns={@JoinColumn(name="job_tag_id")})
	private Set<JobTags> job_tags = new HashSet<JobTags>();
	
	

	public Long getJobs_details_id() {
		return jobs_details_id;
	}

	public void setJobs_details_id(Long jobs_details_id) {
		this.jobs_details_id = jobs_details_id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	/*public Long getJob_tags() {
		return job_tags;
	}

	public void setJob_tags(Long job_tags) {
		this.job_tags = job_tags;
	}*/

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getApplication_email() {
		return application_email;
	}

	public void setApplication_email(String application_email) {
		this.application_email = application_email;
	}

	public Date getClosing_date() {
		return closing_date;
	}

	public void setClosing_date(Date closing_date) {
		this.closing_date = closing_date;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_website() {
		return company_website;
	}

	public void setCompany_website(String company_website) {
		this.company_website = company_website;
	}

	public String getCompany_discription() {
		return company_discription;
	}

	public void setCompany_discription(String company_discription) {
		this.company_discription = company_discription;
	}

	public byte[] getJd_file() {
		return jd_file;
	}

	public void setJd_file(byte[] jd_file) {
		this.jd_file = jd_file;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Timestamp getCrtTs() {
		return crtTs;
	}

	public void setCrtTs(Timestamp crtTs) {
		this.crtTs = crtTs;
	}

	public Set<JobTags> getJob_tags() {
		return job_tags;
	}

	public void setJob_tags(Set<JobTags> job_tags) {
		this.job_tags = job_tags;
	}


}
