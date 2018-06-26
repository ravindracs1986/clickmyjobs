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
@Table(name = "skills")
public class SkillsDetails extends AbstractEntity implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "skills_id", nullable = false)
	private Long skills_id;

	@Column(name = "skill_Name", nullable = false)
	private String skill_Name;

	@Column(name = "skill_percentage", nullable = false)
	private String skill_percentage;

	@Column(name = "userId", nullable = false)
	private Long userId;

	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;

	private ResumeDetails resumDetail;
	
	public SkillsDetails(){}

	public SkillsDetails(String skill_Name, String skill_percentage, Long userId, Timestamp crtTs,
			ResumeDetails resumDetail) {
		this.skill_Name = skill_Name;
		this.skill_percentage = skill_percentage;
		this.userId = userId;
		this.crtTs = crtTs;
		this.resumDetail = resumDetail;
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

	public Long getSkills_id() {
		return skills_id;
	}

	public void setSkills_id(Long skills_id) {
		this.skills_id = skills_id;
	}

	public String getSkill_Name() {
		return skill_Name;
	}

	public void setSkill_Name(String skill_Name) {
		this.skill_Name = skill_Name;
	}

	public String getSkill_percentage() {
		return skill_percentage;
	}

	public void setSkill_percentage(String skill_percentage) {
		this.skill_percentage = skill_percentage;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "resume_id", nullable = false)
	public ResumeDetails getResumDetail() {
		return resumDetail;
	}

	public void setResumDetail(ResumeDetails resumDetail) {
		this.resumDetail = resumDetail;
	}

}
