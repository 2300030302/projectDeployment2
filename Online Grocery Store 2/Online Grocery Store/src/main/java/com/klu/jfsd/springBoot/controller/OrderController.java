package com.klu.jfsd.springBoot.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.klu.jfsd.springBoot.model.Orders;
import com.klu.jfsd.springBoot.service.OrderService;
import com.razorpay.RazorpayException;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;

	@GetMapping("/orders")
	public String ordersPage() {
		return "orders";
	}
	
	@PostMapping(value = "/createOrder", produces = "application/json")
	@ResponseBody
	public ResponseEntity<Orders> createOrder(@RequestBody Orders orders) throws RazorpayException{
		Orders razorpayOrder = orderService.createOrder(orders);
		return new ResponseEntity<>(razorpayOrder,HttpStatus.CREATED);
	}
	
	@PostMapping("/paymentCallback")
	public String paymentCallback(@RequestParam Map<String, String> response) {
		 	orderService.updateStatus(response);
		 	return "success";
		
	}
}