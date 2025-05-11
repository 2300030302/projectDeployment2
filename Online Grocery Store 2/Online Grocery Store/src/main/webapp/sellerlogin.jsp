<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seller Login</title>
<!-- Include Bootstrap for styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
        font-family: Arial, sans-serif;
    }
    .login-container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background: white;
        border-radius: 10px;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    h3 {
        color: #343a40;
    }
    .btn-custom {
        background-color: #28a745;
        color: white;
    }
</style>
</head>
<body>

<%@include file="SellerNavbar.jsp" %>
<h4 align="center" style="color:red">
<c:out value="${message}"></c:out><br/>
</h4>
<div class="login-container">
    <h3 class="text-center">Seller Login</h3>
    <form method="POST" action="checksellerlogin">
        <div class="form-group">
            <label for="semail">Email Address</label>
            <input type="email" class="form-control" id="semail" name="semail" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
            <label for="spwd">Password</label>
            <input type="password" class="form-control" id="spwd" name="spwd" placeholder="Enter your password" required>
        </div>
        <button type="submit" class="btn btn-success btn-block">Login</button>
        <button type="reset" class="btn btn-secondary btn-block">Clear</button>
    </form>
    <div class="text-center mt-3">
        <h5 style="color: blue;">Don't have an account?</h5>
        <a href="sellerreg">Register Here</a>
    </div>
</div>

<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
