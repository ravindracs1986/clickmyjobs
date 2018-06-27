package com.clickmyjobs.portal.persist.entity;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.map.annotate.JsonSerialize;
import org.hibernate.annotations.GenericGenerator;

import com.clickmyjobs.portal.core.AbstractEntity;
import com.clickmyjobs.portal.utils.DateUtil;
import com.fasterxml.jackson.annotation.JsonFormat;

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
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "education")
public class EducationDetails extends AbstractEntity implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "education_id", nullable = false)
	private Long education_id;

	@Column(name = "degree", nullable = false)
	private String degree;

	@Column(name = "field_of_study", nullable = false)
	private String field_of_study;

	@Column(name = "school_or_college", nullable = false)
	private String school_or_college;

	@Column(name = "from_date", nullable = false)
	//@Temporal(TemporalType.DATE)
	//@JsonSerialize(using=com.clickmyjobs.portal.utils.JsonDateSerializer.class)
	//@JsonFormat(shape = JsonFormat.Shape.STRING,pattern="YYYY-MM-DD")
	@Temporal(TemporalType.DATE)
	private Date from_date;

	@Column(name = "to_date", nullable = false)
	//@JsonSerialize(using=com.clickmyjobs.portal.utils.JsonDateSerializer.class)
	//@JsonFormat(shape = JsonFormat.Shape.STRING,pattern="YYYY-MM-DD")
	@Temporal(TemporalType.DATE)
	private Date to_date;

	@Column(name = "description", nullable = false)
	private String description;

	@Column(name = "userId", nullable = false)
	private Long userId;

	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;
	
	@OneToOne(fetch = FetchType.LAZY)
    //@MapsId
	@JoinColumn(name = "resume_id")
	private ResumeDetails details;

	/*
	 * @OneToOne(fetch = FetchType.LAZY)
	 * 
	 * @JoinColumn(name = "resume_id") private ResumeDetails
	 * resumeEducationDetails;
	 */

	public Long getUserId() {
		return userId;
	}

	public EducationDetails() {
	}

	public EducationDetails(String degree, String field_of_study, String school_or_college, Date from_date,
			Date to_date, String description, Long userId, Timestamp crtTs) {
		this.degree = degree;
		this.field_of_study = field_of_study;
		this.school_or_college = school_or_college;
		this.from_date = from_date;
		this.to_date = to_date;
		this.description = description;
		this.userId = userId;
		this.crtTs = crtTs;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Timestamp getCrtTs() {
		return DateUtil.convertDate2SqlTimeStamp(new Date());
	}

	public void setCrtTs(Timestamp crtTs) {
		this.crtTs = crtTs;
	}

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

	public String getField_of_study() {
		return field_of_study;
	}

	public void setField_of_study(String field_of_study) {
		this.field_of_study = field_of_study;
	}

	public String getSchool_or_college() {
		return school_or_college;
	}

	public void setSchool_or_college(String school_or_college) {
		this.school_or_college = school_or_college;
	}

	public Date getFrom_date() {
		return from_date;
	}

	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}

	public Date getTo_date() {
		return to_date;
	}

	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ResumeDetails getDetails() {
		return details;
	}

	public void setDetails(ResumeDetails details) {
		this.details = details;
	}
	
	

}
