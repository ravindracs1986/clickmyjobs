package com.clickmyjobs.portal.persist.entity;


import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.clickmyjobs.portal.core.AbstractEntity;

/**
 * 
 * 
 * 
 * @SecondaryTables({
    @SecondaryTable(name="jobs_details", pkJoinColumns={
        @PrimaryKeyJoinColumn(name="jobs_details_id", referencedColumnName="student_id") }),
    @SecondaryTable(name="address", pkJoinColumns={
        @PrimaryKeyJoinColumn(name="id", referencedColumnName="student_id") })
})
 * @author ravindra
 *
 */

@Entity
@Table(name = "job_tags")
/*@SecondaryTables({
    @SecondaryTable(name="jobs_details", pkJoinColumns={
        @PrimaryKeyJoinColumn(name="jobs_details_id", referencedColumnName="jobs_details_id") })
})*/
public class JobTags extends AbstractEntity implements java.io.Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	@Column(name = "job_tag_id", nullable = false)
	private Long job_tag_id;

	@Column(name = "job_tag_name", nullable = false)
	private String job_tag_name;

	@Column(name = "CRT_TS", nullable = false, length = 50)
	private Timestamp crtTs;
	
	@ManyToMany(mappedBy="job_tags")
	private Set<EmployersJobDetails> jobDetails = new HashSet<EmployersJobDetails>();
	

	public Long getJob_tag_id() {
		return job_tag_id;
	}

	public void setJob_tag_id(Long job_tag_id) {
		this.job_tag_id = job_tag_id;
	}

	

	public String getJob_tag_name() {
		return job_tag_name;
	}

	public void setJob_tag_name(String job_tag_name) {
		this.job_tag_name = job_tag_name;
	}

	public Timestamp getCrtTs() {
		return crtTs;
	}

	public void setCrtTs(Timestamp crtTs) {
		this.crtTs = crtTs;
	}

	public Set<EmployersJobDetails> getJobDetails() {
		return jobDetails;
	}

	public void setJobDetails(Set<EmployersJobDetails> jobDetails) {
		this.jobDetails = jobDetails;
	}



}
