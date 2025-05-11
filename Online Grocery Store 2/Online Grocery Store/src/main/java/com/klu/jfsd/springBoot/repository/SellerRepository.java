package com.klu.jfsd.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.jfsd.springBoot.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer> 
{
	@Query("select s from Seller s where s.email=?1 and s.password = ?2")
	public Seller checkSellerLogin(String email,String password);
}
