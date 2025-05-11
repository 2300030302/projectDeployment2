package com.klu.jfsd.springBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="admin_table")
public class Admin 
{
	@Id
	@Column(name="admin_username",length=80)
	private String username;
	@Column(name="admin_password",length=100,nullable = false)
	private String password;

}
