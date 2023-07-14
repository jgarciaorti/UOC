package com.weldtic.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "machine")
public class Machine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column
	private String serialNumber;
	
	@ManyToOne()
    @JoinColumn(name = "company_id")
    private Company company;
	
	@OneToMany(mappedBy = "machine")
	private Set<ProjectMachine> projectMachine;
	
	/*@ManyToMany(cascade= {CascadeType.PERSIST, CascadeType.MERGE})
	@JoinTable
	(name = "ProjectMachine",
	joinColumns = {@JoinColumn(name = "machine_id")},
	inverseJoinColumns = {@JoinColumn(name = "project_id")}
	)
	private Set<Project> projects;*/
//    private Company company;
	
//	private Set<Issue> issues;
	
//    private Product product;
	
	public Machine() {	}

	public Machine(String serialNumber, Company company) {
		super();
		this.serialNumber = serialNumber;
		this.company = company;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Set<ProjectMachine> getProjectMachine() {
		return projectMachine;
	}

	public void setProjectMachine(Set<ProjectMachine> projectMachine) {
		this.projectMachine = projectMachine;
	}
}
