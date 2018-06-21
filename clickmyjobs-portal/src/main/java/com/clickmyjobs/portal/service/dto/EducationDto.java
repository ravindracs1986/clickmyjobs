package com.clickmyjobs.portal.service.dto;

import org.springframework.web.multipart.MultipartFile;

public class EducationDto {
	
	private Long education_id;
	private String degree;
	private String field_of_Study;
	private String school_or_college;
	private String from_date;
	private String to_date;
	private String description;
	private Long userId;
	public Long getEducation_id() {
		return education_id;
	}
	public void setEducation_id(Long education_id) {
		this.education_id = education_id;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getField_of_Study() {
		return field_of_Study;
	}
	public void setField_of_Study(String field_of_Study) {
		this.field_of_Study = field_of_Study;
	}
	public String getSchool_or_college() {
		return school_or_college;
	}
	public void setSchool_or_college(String school_or_college) {
		this.school_or_college = school_or_college;
	}
	public String getFrom_date() {
		return from_date;
	}
	public void setFrom_date(String from_date) {
		this.from_date = from_date;
	}
	public String getTo_date() {
		return to_date;
	}
	public void setTo_date(String to_date) {
		this.to_date = to_date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	
	
	
}
