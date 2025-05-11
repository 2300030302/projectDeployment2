package com.klu.jfsd.springBoot.service;

import com.klu.jfsd.springBoot.model.Seller;

public interface SellerService 
{
	public String sellerRegistration(Seller seller);
	public Seller checkSellerLogin(String email,String password);
}
