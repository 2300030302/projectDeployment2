package com.klu.jfsd.springBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MailController {

    @Autowired
    private JavaMailSender mailSender;
    
    @GetMapping("/contact")
    public ModelAndView mail() {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("contact");
    	return mv;
    }

    @PostMapping("/sendMail")
    public String sendMail(
            @RequestParam("Cname") String name,
            @RequestParam("Cemail") String email,
            @RequestParam("Csubject") String subject,
            @RequestParam("Cmessage") String message) {

        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setText(name);
            mailMessage.setTo(email);
            mailMessage.setSubject(subject);
            mailMessage.setText(message);

            mailSender.send(mailMessage);
            return "mailSuccess"; // Create a JSP for success message
        } catch (Exception e) {
            e.printStackTrace();
            return "mailError"; // Create a JSP for error message
        }
    }
}
