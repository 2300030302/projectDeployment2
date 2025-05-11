package com.klu.jfsd.springBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.service.PaintingService;
import com.klu.jfsd.springBoot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class SellerController 
{
	@Autowired
	private SellerService sellerservice;
	
	 @Autowired
	    private PaintingService paintingService;

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("/home")
	public ModelAndView home2() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("/sellerhome")
	public ModelAndView sellerhome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerhome");
		return mv;
	}
	@GetMapping("/sellerreg")
	public ModelAndView customerreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerreg");
		return mv;
	}
	@GetMapping("/sellerlogin")
	public ModelAndView customerlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerlogin");
		return mv;
	}
	@GetMapping("/sellerprofile")
	public ModelAndView sellerprofile() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerprofile");
		return mv;
	}
	@PostMapping("/insertseller")
	public ModelAndView insertseller(HttpServletRequest request) {
		String name=request.getParameter("sname");
		String email=request.getParameter("semail");
		String password=request.getParameter("spwd");
		String location=request.getParameter("slocation");
		String contact=request.getParameter("scontact");
		
		Seller seller=new Seller();
		seller.setName(name);
		seller.setEmail(email);
		seller.setPassword(password);
		seller.setLocation(location);
		seller.setContact(contact);
		
		String message=sellerservice.sellerRegistration(seller);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerlogin");
		return mv;		
	}
	@PostMapping("checksellerlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String semail=request.getParameter("semail");
		String spwd=request.getParameter("spwd");
		Seller s=sellerservice.checkSellerLogin(semail,spwd);
		
		if(s!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("seller", s);
			
			mv.setViewName("sellerhome");
		}
		else {
			mv.setViewName("sellerlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("/sellerlogout")
	public ModelAndView sellerlogout() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	 @GetMapping("/addPainting")
	    public String showAddPaintingForm() {
	        return "addPainting";
	    }

	    @PostMapping("/addPainting")
	    public String addPainting(
	            @RequestParam("title") String title,
	            @RequestParam("description") String description,
	            @RequestParam("price") double price,
	            @RequestParam("category") String category,
	            @RequestParam("image") MultipartFile image,
	            Model model
	    ) {
	        try {
	            paintingService.addPainting(title, description, price, category, image);
	            model.addAttribute("message", "Painting added successfully!");
	        } catch (Exception e) {
	            model.addAttribute("message", "Error saving the painting. Please try again.");
	            e.printStackTrace();
	        }
	        return "addPainting";
	    }
}
