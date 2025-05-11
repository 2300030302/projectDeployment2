//package com.klu.jfsd.springBoot.service;
////import com.razorpay.Order;
////import com.razorpay.RazorpayClient;
////import org.json.JSONObject;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Service;
//
//@Service
//public class PaymentService {
//
//    @Value("${rzp_test_VfDnABLjynnWfn}")
//    private String razorpayKey;
//
//    @Value("${Cm4F3ZNG7KyaHNAGEjG0UDMw}")
//    private String razorpaySecret;
//
//    public String createOrder(int amount) throws Exception {
//        RazorpayClient razorpayClient = new RazorpayClient(razorpayKey, razorpaySecret);
//
//        JSONObject orderRequest = new JSONObject();
//        orderRequest.put("amount", amount * 100); // Convert to paise
//        orderRequest.put("currency", "INR");
//        orderRequest.put("receipt", "txn_" + System.currentTimeMillis());
//
//        Order order = razorpayClient.Orders.create(orderRequest);
//        return order.get("id");
//    }
//}
