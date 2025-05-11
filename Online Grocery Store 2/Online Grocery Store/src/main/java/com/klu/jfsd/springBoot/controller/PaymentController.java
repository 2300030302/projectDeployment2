//package com.klu.jfsd.springBoot.controller;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.klu.jfsd.springBoot.service.PaymentService;
//
//@Controller
//public class PaymentController {
//
//   
//	@Autowired
//	private PaymentService paymentService;
//	
//	@GetMapping("/pay")
//	public ModelAndView pay() {
//		ModelAndView mv=new ModelAndView();
//		mv.setViewName("paymentPage");
//		return mv;
//	}
//
//    @PostMapping("/payment")
//    public String processPayment(@RequestParam("amount") int amount, Model model) {
//        try {
//            String orderId = paymentService.createOrder(amount);
//            model.addAttribute("orderId", orderId);
//            model.addAttribute("key", "rzp_test_VfDnABLjynnWfn"); // Razorpay key
//            model.addAttribute("amount", amount);
//            return "paymentPage";
//        } catch (Exception e) {
//            model.addAttribute("errorReason", e.getMessage());
//            return "paymentFailure";
//        }
//    }
//
//    @PostMapping("/paymentSuccess")
//    public String paymentSuccess(@RequestParam("razorpay_payment_id") String paymentId, Model model) {
//        model.addAttribute("paymentId", paymentId);
//        return "paymentSuccess";
//    }
//
//    @PostMapping("/paymentFailure")
//    public String paymentFailure(@RequestParam("error") String error, Model model) {
//        model.addAttribute("errorReason", error);
//        return "paymentFailure";
//    }
//}
//
