package com.klu.jfsd.springBoot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="customer_table")
public class Customer
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto-increment
	@Column(name="customer_id")
	private int id;
	@Column(name="customer_name",nullable = false,length = 100)
	private String name;
	@Column(name="customer_gender",nullable = false,length = 10)
	private String gender;
	@Column(name="customer_dateofbirth",nullable = false,length=20)
	private String dateofbirth;
	@Column(name="customer_email",nullable = false,unique = true,length=100)
	private String email;
	@Column(name="customer_password",nullable = false,length=50)
	private String password;
	@Column(name="customer_location",nullable = false,length=100)
	private String location;
	@Column(name="customer_contact",nullable = false,length=20)
	private String contactno;
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getGender() {
		return gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getLocation() {
		return location;
	}
	public String getContactno() {
		return contactno;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
}
