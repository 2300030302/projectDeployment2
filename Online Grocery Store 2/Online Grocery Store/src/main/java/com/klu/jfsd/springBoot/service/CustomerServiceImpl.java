package com.klu.jfsd.springBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.repository.CustomerRepositroy;

@Service
public class CustomerServiceImpl  implements CustomerService
{

	@Autowired
	private CustomerRepositroy customerRepository;
	
	@Override
	public String customerRegistration(Customer customer) {
		 
		customerRepository.save(customer);
		return "Customer Added Successfully";
		
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) 
	{
		
		return customerRepository.checkCustomerLogin(email, password);
	}

}
