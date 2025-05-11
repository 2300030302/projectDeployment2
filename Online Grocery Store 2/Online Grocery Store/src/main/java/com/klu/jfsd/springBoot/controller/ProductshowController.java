package com.klu.jfsd.springBoot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExhibitionController {

	@GetMapping("/exhibition")
	public String exhibition() {
		return "Exhibition";
	}
}
