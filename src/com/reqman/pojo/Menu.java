package com.reqman.pojo;

// Generated 13 Aug, 2017 10:25:05 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Menu generated by hbm2java
 */
@Entity
@Table(name = "menu")
public class Menu implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7960223982947104909L;
	private int id;
	private String name;
	private String tabname;
	private Boolean status;
	private Date datecreated;
	private String createdby;
	private Set<Rolemenus> rolemenuses = new HashSet<Rolemenus>(0);

	public Menu() {
	}

	public Menu(int id) {
		this.id = id;
	}

	public Menu(int id, String name, String tabname, Boolean status,
			Date datecreated, String createdby, Set<Rolemenus> rolemenuses) {
		this.id = id;
		this.name = name;
		this.tabname = tabname;
		this.status = status;
		this.datecreated = datecreated;
		this.createdby = createdby;
		this.rolemenuses = rolemenuses;
	}

	@Id
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "tabname", length = 100)
	public String getTabname() {
		return this.tabname;
	}

	public void setTabname(String tabname) {
		this.tabname = tabname;
	}

	@Column(name = "status")
	public Boolean getStatus() {
		return this.status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "datecreated", length = 29)
	public Date getDatecreated() {
		return this.datecreated;
	}

	public void setDatecreated(Date datecreated) {
		this.datecreated = datecreated;
	}

	@Column(name = "createdby", length = 100)
	public String getCreatedby() {
		return this.createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "menu")
	public Set<Rolemenus> getRolemenuses() {
		return this.rolemenuses;
	}

	public void setRolemenuses(Set<Rolemenus> rolemenuses) {
		this.rolemenuses = rolemenuses;
	}

}
