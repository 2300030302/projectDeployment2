package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerProject {
    
    @GetMapping("/")
    public String HomeRender()
    {
        return "home";
    }
}
