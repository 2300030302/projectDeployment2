package com.klu.jfsd.springBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="seller_table")
public class Seller 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="seller_id")
	private int id;
	@Column(name="seller_name",nullable = false)
	private String name;
	@Column(name="seller_location",nullable = false,length=100)
	private String location;
	@Column(name="seller_contact",nullable = false,length=100)
	private String contact;
	@Column(name="seller_email",nullable = false,unique = true,length=100)
	private String email;
	@Column(name="seller_password",nullable = false,length=100)
	private String password;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getLocation() {
		return location;
	}
	public String getContact() {
		return contact;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
