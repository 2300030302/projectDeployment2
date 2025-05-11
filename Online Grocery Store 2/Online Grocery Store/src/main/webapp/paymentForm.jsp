<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Razorpay Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h1>Razorpay Payment Gateway Integration</h1>
    <form action="/payment" method="POST">
        <label for="amount">Amount (in INR):</label>
        <input type="number" id="amount" name="amount" required>
        <button type="submit">Pay Now</button>
    </form>
</body>
</html>
