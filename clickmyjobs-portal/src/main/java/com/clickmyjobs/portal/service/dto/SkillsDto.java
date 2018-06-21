package com.clickmyjobs.portal.service.dto;

import org.springframework.web.multipart.MultipartFile;

public class SkillsDto {
	
	private Long skills_id;
	private String skill_Name;
	private String skill_percentage;
	private Long userId;
	
	public SkillsDto(){}
	
	
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
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	
	
	
}
