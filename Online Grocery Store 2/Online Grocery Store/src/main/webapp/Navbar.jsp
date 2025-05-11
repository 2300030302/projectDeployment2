<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Online Art Gallery</title>
<style>
    body {
        background-color: #f9f9f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    h2 {
        margin-top: 20px;
        text-align: center;
        color: #2c3e50;
        font-size: 2.5rem;
        font-weight: bold;
    }

    .navbar {
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #007BFF;
        padding: 15px 0;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        text-decoration: none;
        color: white;
        margin: 0 20px;
        font-size: 18px;
        font-weight: 500;
        transition: color 0.3s ease, transform 0.3s ease;
    }

    .navbar a:hover {
        color: #ffcc00;
        transform: scale(1.1);
        text-decoration: none;
    }

    .navbar a:active {
        color: #ff9900;
    }

    .navbar {
        border-radius: 5px;
    }

    .container {
        max-width: 1100px;
        margin: 20px auto;
        padding: 15px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
</style>
</head>
<body>
    <div class="navbar">
        <a href="home">Home</a>
        <a href="customerreg">Customer Registration</a>
        <a href="customerlogin">Customer Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>
    <div class="container">
        <p style="text-align: center; font-size: 1.2rem; color: #555;">
            Welcome to the Online Art Gallery! Explore a wide range of artistic creations and manage your account seamlessly.
        </p>
    </div>
</body>
</html>
