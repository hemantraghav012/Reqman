package com.reqman.pojo;

// Generated 12 Feb, 2018 7:22:07 PM by Hibernate Tools 4.3.1

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Schdulejobs generated by hbm2java
 */
@Entity
@Table(name = "schdulejobs")
public class Schdulejobs implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4113054848659290145L;
	private int id;
	private String jobname;
	private String description;
	private String day;
	private String hour;
	private String minute;
	private Boolean status;
	private String createdby;
	private Date createdon;

	public Schdulejobs() {
	}

	public Schdulejobs(int id) {
		this.id = id;
	}

	public Schdulejobs(int id, String jobname, String description, String day,
			String hour, String minute, Boolean status, String createdby,
			Date createdon) {
		this.id = id;
		this.jobname = jobname;
		this.description = description;
		this.day = day;
		this.hour = hour;
		this.minute = minute;
		this.status = status;
		this.createdby = createdby;
		this.createdon = createdon;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "jobname", length = 200)
	public String getJobname() {
		return this.jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	@Column(name = "description", length = 200)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "day", length = 10)
	public String getDay() {
		return this.day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Column(name = "hour", length = 10)
	public String getHour() {
		return this.hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	@Column(name = "minute", length = 10)
	public String getMinute() {
		return this.minute;
	}

	public void setMinute(String minute) {
		this.minute = minute;
	}

	@Column(name = "status")
	public Boolean getStatus() {
		return this.status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Column(name = "createdby", length = 50)
	public String getCreatedby() {
		return this.createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "createdon", length = 29)
	public Date getCreatedon() {
		return this.createdon;
	}

	public void setCreatedon(Date createdon) {
		this.createdon = createdon;
	}

}
