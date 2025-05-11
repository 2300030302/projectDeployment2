package com.klu.jfsd.springBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.springBoot.model.Admin;
import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.repository.AdminRepository;
import com.klu.jfsd.springBoot.repository.CustomerRepositroy;
import com.klu.jfsd.springBoot.repository.SellerRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private CustomerRepositroy customerRepository;
	
	@Autowired
	private SellerRepository sellerRepository;
	
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public List<Customer> viewAllCustomers() {
		 return customerRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}

	@Override
	public List<Seller> viewAllSellers() {
		return sellerRepository.findAll();
	}

	@Override
	public long customercount() {
		
		return customerRepository.count();
	}

	@Override
	public long sellercount() {
		return sellerRepository.count();
	}

	@Override
	public String DeleteCustomer(int id) {
		customerRepository.deleteById(id);
		return "Customer Deleted Successfully";
	}

	@Override
	public String AddCustomer(Customer customer) {
		
		customerRepository.save(customer);
		return "Customer Inserted Successfully";
	}

	@Override
	public String DeleteSeller(int id) {
		sellerRepository.deleteById(id);
		return "Seller Deleted Successfully";
	}

	@Override
	public String AddSeller(Seller seller) {
		sellerRepository.save(seller);
		return "Seller Added Successfully";
	}

}
