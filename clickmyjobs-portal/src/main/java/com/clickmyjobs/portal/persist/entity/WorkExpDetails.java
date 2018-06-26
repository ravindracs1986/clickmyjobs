package com.clickmyjobs.portal.persist.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "work_experience")
public class WorkExpDetails extends AbstractEntity implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "work_experience_id", nullable = false)
	private Long work_experience_id;

	@Column(name = "company_name", nullable = false)
	private String company_name;

	@Column(name = "title", nullable = false)
	private String title;

	@Column(name = "date_form", nullable = false)
	private Date date_form;

	@Column(name = "date_to", nullable = false)
	private Date date_to;

	@Column(name = "description", nullable = false)
	private String description;

	@Column(name = "current_job", nullable = false)
	private String current_job;

	@Column(name = "resume", nullable = false)
	private byte[] resume;

	@Column(name = "userId", nullable = false)
	private Long userId;

	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;

	private ResumeDetails resumeDetails;

	public WorkExpDetails(){}
	
	public WorkExpDetails(String company_name, String title, Date date_form, Date date_to, String description,
			String current_job, byte[] resume, Long userId, Timestamp crtTs, ResumeDetails resumeDetails) {
		this.company_name = company_name;
		this.title = title;
		this.date_form = date_form;
		this.date_to = date_to;
		this.description = description;
		this.current_job = current_job;
		this.resume = resume;
		this.userId = userId;
		this.crtTs = crtTs;
		this.resumeDetails = resumeDetails;
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

	public Date getDate_form() {
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
	}

	public String getDescription() {
		return description;
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

	public byte[] getResume() {
		return resume;
	}

	public void setResume(byte[] resume) {
		this.resume = resume;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "resume_id", nullable = false)
	public ResumeDetails getResumeDetails() {
		return resumeDetails;
	}

	public void setResumeDetails(ResumeDetails resumeDetails) {
		this.resumeDetails = resumeDetails;
	}

}
