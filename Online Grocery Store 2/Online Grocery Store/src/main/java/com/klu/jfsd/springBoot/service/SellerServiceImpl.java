package com.klu.jfsd.springBoot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.repository.SellerRepository;
@Service
public class SellerServiceImpl implements SellerService{

	@Autowired
	public SellerRepository sel;
	@Override
	public String sellerRegistration(Seller seller) {
		sel.save(seller);
		return "Registered Successfully";
	}

	@Override
	public Seller checkSellerLogin(String email, String password) {
		
		return sel.checkSellerLogin(email, password);
	}

}
