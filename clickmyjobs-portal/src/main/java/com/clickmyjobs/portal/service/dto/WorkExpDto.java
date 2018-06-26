package com.clickmyjobs.portal.service.dto;

import java.util.Date;

import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.springframework.web.multipart.MultipartFile;

import com.clickmyjobs.portal.utils.JsonDateSerializer;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown=true)
public class WorkExpDto {
	
	private Long work_experience_id;
	private String company_name;
	private String title;
	//@JsonSerialize(using=JsonDateSerializer.class)
	//@JsonFormat(shape = JsonFormat.Shape.STRING,pattern="YYYY-MM-DD")
	private String date_form;
	//@JsonSerialize(using=JsonDateSerializer.class)
	//@JsonFormat(shape = JsonFormat.Shape.STRING,pattern="YYYY-MM-DD")
	private String date_to;
	private String description;
	private String current_job;
	private Long userId;
	public Long getWork_experience_id() {
		return work_experience_id;
	}
	public void setWork_experience_id(Long work_experience_id) {
		this.work_experience_id = work_experience_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	/*public Date getDate_form() {
		return date_form;
	}
	public void setDate_form(Date date_form) {
		this.date_form = date_form;
	}
	public Date getDate_to() {
		return date_to;
	}
	public void setDate_to(Date date_to) {
		this.date_to = date_to;
	}*/
	
	
	
	public String getDescription() {
		return description;
	}
	public String getDate_form() {
		return date_form;
	}
	public void setDate_form(String date_form) {
		this.date_form = date_form;
	}
	public String getDate_to() {
		return date_to;
	}
	public void setDate_to(String date_to) {
		this.date_to = date_to;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCurrent_job() {
		return current_job;
	}
	public void setCurrent_job(String current_job) {
		this.current_job = current_job;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	
	
	
}
