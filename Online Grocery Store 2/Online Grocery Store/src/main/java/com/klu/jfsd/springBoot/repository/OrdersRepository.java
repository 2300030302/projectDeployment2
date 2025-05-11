package com.klu.jfsd.springBoot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.jfsd.springBoot.model.Orders;


public interface OrdersRepository extends JpaRepository<Orders, Integer>{

	Orders findByRazorpayOrderId(String razorpayId);
}

