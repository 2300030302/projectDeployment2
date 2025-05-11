package com.klu.jfsd.springBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Admin;
import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.service.AdminService;
import com.klu.jfsd.springBoot.service.CustomerService;
import com.klu.jfsd.springBoot.service.SellerService;
import com.klu.jfsd.springBoot.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminservice;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private SellerService sellerService;

	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminNavbar")
	public ModelAndView adminnavbar() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminNavbar");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String unmae=request.getParameter("ausername");
		String pwd=request.getParameter("apwd");
		
		Admin admin=adminservice.checkAdminLogin(unmae, pwd);
		if(admin!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("admin", session);
			mv.setViewName("adminhome");
			long count=adminservice.customercount();
			mv.addObject("count", count);
		}
		else {
			mv.setViewName("adminlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		long count=adminservice.customercount();
		mv.addObject("count", count);
		return mv;
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallcustomers");
		long count=adminservice.customercount();
		mv.addObject("count", count);
		
		List<Customer> customers=adminservice.viewAllCustomers();
		mv.addObject("customerlist", customers);
		return mv;
	}
	
	@GetMapping("viewallsellers")
	public ModelAndView viewallsellers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallsellers");
		
		long count=adminservice.sellercount();
		mv.addObject("count", count);
		
		List<Seller> sellers=adminservice.viewAllSellers();
		mv.addObject("customerlist", sellers);
		return mv;
	}
	
	@GetMapping("deletecustomers")
	public ModelAndView deletecustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletecustomers");
		
		List<Customer> customers=adminservice.viewAllCustomers();
		mv.addObject("customerlist", customers);
		return mv;
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam int id) {
		adminservice.DeleteCustomer(id);
		return "redirect:/deletecustomers";
	}
	
	@GetMapping("deletesellers")
	public ModelAndView deletesellers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletesellers");

		List<Seller> sellers=adminservice.viewAllSellers();
		mv.addObject("customerlist", sellers);
		
		return mv;
	}
	@GetMapping("deleteit")
	public String deleteit(@RequestParam int id) {
		adminservice.DeleteSeller(id);
		return "redirect:/deletesellers";
	}
	
	@GetMapping("insert")
	public ModelAndView addCustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addCustomers");
		return mv;
	}
	
	@PostMapping("/inserting")
	public ModelAndView insertcustomer(HttpServletRequest request) {
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Customer customer=new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateofbirth(dob);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setContactno(contact);
		customer.setLocation(location);
		
		String message=customerService.customerRegistration(customer);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addCustomers");
		return mv;
	}
	@GetMapping("insertsel")
	public ModelAndView addSeller() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addSellers");
		return mv;
	}
	
	
}
