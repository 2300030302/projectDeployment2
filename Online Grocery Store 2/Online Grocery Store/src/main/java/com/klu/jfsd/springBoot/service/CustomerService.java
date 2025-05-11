package com.klu.jfsd.springBoot.service;

import com.klu.jfsd.springBoot.model.Customer;

public interface CustomerService
{

	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password);
}
