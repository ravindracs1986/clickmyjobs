package com.clickmyjobs.portal.service.dto;

import org.springframework.web.multipart.MultipartFile;

public class AddJobDto {
	
	private Long jobs_details_id;
	private String email;
	private String job_title;
	private String country;
	private String city;
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
	
	private String qualification;
	private String experience;
	private String employement_type;
	private String salary_rang;
	/*private byte[] company_logo;*/
	
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
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getEmployement_type() {
		return employement_type;
	}
	public void setEmployement_type(String employement_type) {
		this.employement_type = employement_type;
	}
	public String getSalary_rang() {
		return salary_rang;
	}
	public void setSalary_rang(String salary_rang) {
		this.salary_rang = salary_rang;
	}

}
