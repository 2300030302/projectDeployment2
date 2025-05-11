package com.klu.jfsd.springBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Artist;
import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.service.ArtistService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ArtistController {
	
	@Autowired
	private ArtistService artistService;

	@GetMapping("/addArtist")
	public ModelAndView addArtist() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addArtist");
		return mv;
	}
	
	@PostMapping("/insertArtist")
	public ModelAndView insertArtist(HttpServletRequest request) {
		String name=request.getParameter("arname");
		String location=request.getParameter("arlocation");
		String email=request.getParameter("aremail");
		
		Artist a=new Artist();
		a.setName(name);
		a.setLocation(location);
		a.setEmail(email);
		
		String message=artistService.addArtist(a);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		mv.addObject("message", message);
		return mv;
		
	}
	
	@GetMapping("viewallartists")
	public ModelAndView viewallsellers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallartists");		
		List<Artist> sellers=artistService.viewAllArtists();
		mv.addObject("customerlist", sellers);
		return mv;
	}
	
}
