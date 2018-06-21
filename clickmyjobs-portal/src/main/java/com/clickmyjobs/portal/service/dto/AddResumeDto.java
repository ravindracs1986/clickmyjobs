package com.clickmyjobs.portal.service.dto;

import java.util.LinkedList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class AddResumeDto {
	
	private Long resume_id;
	private String name;
	private String email;
	private String profession_title;
	private String profile_description;
	private String location;
	private String web;
	private String salary_expectations;
	private String notice_period;
	private MultipartFile resume;
	private EducationDto education;
	private SkillsDto skill;
	private List<SkillsDto> skillsList = new LinkedList<SkillsDto>();
	//private List<SkillsDto> skills;
	private List<WorkExpDto> workExps;
	private WorkExpDto workExp;
	
	private Long userId;

	public AddResumeDto(){}
	
	
	
	public AddResumeDto(List<SkillsDto> skillsList) {
		this.skillsList = skillsList;
	}



	public Long getResume_id() {
		return resume_id;
	}

	public void setResume_id(Long resume_id) {
		this.resume_id = resume_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public MultipartFile getResume() {
		return resume;
	}

	public void setResume(MultipartFile resume) {
		this.resume = resume;
	}

	public EducationDto getEducation() {
		return education;
	}

	public void setEducation(EducationDto education) {
		this.education = education;
	}

	

	public List<SkillsDto> getSkillsList() {
		return skillsList;
	}



	public void setSkillsList(List<SkillsDto> skillsList) {
		this.skillsList = skillsList;
	}



	public List<WorkExpDto> getWorkExps() {
		return workExps;
	}

	public void setWorkExps(List<WorkExpDto> workExps) {
		this.workExps = workExps;
	}
	public SkillsDto getSkill() {
		return skill;
	}

	public void setSkill(SkillsDto skill) {
		this.skill = skill;
	}

	public WorkExpDto getWorkExp() {
		return workExp;
	}

	public void setWorkExp(WorkExpDto workExp) {
		this.workExp = workExp;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
	
	
	
	
}
