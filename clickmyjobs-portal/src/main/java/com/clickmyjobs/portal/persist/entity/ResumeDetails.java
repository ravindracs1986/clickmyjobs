package com.clickmyjobs.portal.persist.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.clickmyjobs.portal.core.AbstractEntity;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "resume")
public class ResumeDetails extends AbstractEntity implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "resume_id", nullable = false)
	private Long resume_id;

	@Column(name = "profession_title", nullable = false)
	private String profession_title;

	@Column(name = "profile_description", nullable = false)
	private String profile_description;

	@Column(name = "location", nullable = false)
	private String location;

	@Column(name = "web", nullable = false)
	private String web;

	@Column(name = "salary_expectations", nullable = false)
	private String salary_expectations;

	@Column(name = "notice_period", nullable = false)
	private String notice_period;

	@Column(name = "resume", nullable = false)
	private byte[] resume;

	@Column(name = "visible", nullable = false)
	private String visible;

	@Column(name = "userId", nullable = false)
	private Long userId;

	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;

	//@OneToOne(mappedBy = "resumeEducationDetails", cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = false)
	private EducationDetails educationDetails;
	@Transient
	private List<SkillsDetails> skillsDetails = new ArrayList<SkillsDetails>(0);
	@Transient
	private List<WorkExpDetails> workExpDetails = new ArrayList<WorkExpDetails>(0);
	
	public ResumeDetails(){}
	

	public ResumeDetails(String profession_title, String profile_description, String location, String web,
			String salary_expectations, String notice_period, byte[] resume, String visible, Long userId,
			Timestamp crtTs, EducationDetails educationDetails, List<SkillsDetails> skillsDetails,
			List<WorkExpDetails> workExpDetails) {
		this.profession_title = profession_title;
		this.profile_description = profile_description;
		this.location = location;
		this.web = web;
		this.salary_expectations = salary_expectations;
		this.notice_period = notice_period;
		this.resume = resume;
		this.visible = visible;
		this.userId = userId;
		this.crtTs = crtTs;
		this.educationDetails = educationDetails;
		this.skillsDetails = skillsDetails;
		this.workExpDetails = workExpDetails;
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

	public Long getResume_id() {
		return resume_id;
	}

	public void setResume_id(Long resume_id) {
		this.resume_id = resume_id;
	}

	public String getProfession_title() {
		return profession_title;
	}

	public void setProfession_title(String profession_title) {
		this.profession_title = profession_title;
	}

	public String getProfile_description() {
		return profile_description;
	}

	public void setProfile_description(String profile_description) {
		this.profile_description = profile_description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getWeb() {
		return web;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	public String getSalary_expectations() {
		return salary_expectations;
	}

	public void setSalary_expectations(String salary_expectations) {
		this.salary_expectations = salary_expectations;
	}

	public String getNotice_period() {
		return notice_period;
	}

	public void setNotice_period(String notice_period) {
		this.notice_period = notice_period;
	}

	public byte[] getResume() {
		return resume;
	}

	public void setResume(byte[] resume) {
		this.resume = resume;
	}

	public String getVisible() {
		return visible;
	}

	public void setVisible(String visible) {
		this.visible = visible;
	}
	@OneToOne(cascade = CascadeType.ALL)
	public EducationDetails getEducationDetails() {
		return educationDetails;
	}

	public void setEducationDetails(EducationDetails educationDetails) {
		this.educationDetails = educationDetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "resume")
	@ElementCollection(targetClass=SkillsDetails.class)
	public List<SkillsDetails> getSkillsDetails() {
		return skillsDetails;
	}

	public void setSkillsDetails(List<SkillsDetails> skillsDetails) {
		this.skillsDetails = skillsDetails;
	}
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "resume")
	@ElementCollection(targetClass=WorkExpDetails.class)
	
	public List<WorkExpDetails> getWorkExpDetails() {
		return workExpDetails;
	}

	public void setWorkExpDetails(List<WorkExpDetails> workExpDetails) {
		this.workExpDetails = workExpDetails;
	}

}
