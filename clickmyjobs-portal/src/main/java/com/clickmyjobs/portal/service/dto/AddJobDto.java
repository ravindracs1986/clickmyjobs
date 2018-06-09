package com.clickmyjobs.portal.service.dto;

import org.springframework.web.multipart.MultipartFile;

public class AddJobDto {
	
	private Long jobs_details_id;
	private String email;
	private String job_title;
	private String location;
	private String category;
	private String tags;
	private String description;
	private String application_email;
	private String closing_date;
	private String company_name;
	private String company_website;
	private String company_discription;
	private MultipartFile file;
	private Long userId;
	
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
	
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
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
	public String getClosing_date() {
		return closing_date;
	}
	public void setClosing_date(String closing_date) {
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
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	

}
