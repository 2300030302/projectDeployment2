<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Razorpay Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h1>Complete Your Payment</h1>
    <button id="rzp-button">Pay Now</button>

    <script>
        var options = {
            "key": "${key}", // Replace with Razorpay key
            "amount": "${amount * 100}", // Amount in paise
            "currency": "INR",
            "name": "Test Company",
            "description": "Test Transaction",
            "order_id": "${orderId}", // Pass the Razorpay order ID
            "handler": function (response) {
                alert("Payment Successful!");
                window.location.href = "/paymentSuccess?razorpay_payment_id=" + response.razorpay_payment_id;
            },
            "prefill": {
                "name": "Test User",
                "email": "test@example.com",
                "contact": "9999999999"
            },
            "theme": {
                "color": "#3399cc"
            }
        };
        var rzp1 = new Razorpay(options);
        document.getElementById('rzp-button').onclick = function (e) {
            rzp1.open();
            e.preventDefault();
        }
    </script>
</body>
</html>
