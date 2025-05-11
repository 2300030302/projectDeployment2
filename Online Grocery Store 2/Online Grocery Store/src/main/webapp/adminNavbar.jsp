<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Admin Home - Online Art Gallery</title>
<style>
    body {
        background-color: #f9f9f9;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    /* Navbar Style */
    .navbar {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 250px;
        background-color: #343a40;
        padding-top: 20px;
        padding-left: 15px;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        color: white;
    }

    .navbar a {
        text-decoration: none;
        color: white;
        margin: 10px 0;
        font-size: 18px;
        display: block;
        padding: 10px;
        transition: background-color 0.3s ease;
    }

    .navbar a:hover {
        background-color: #007BFF;
        color: #ffffff;
        border-radius: 5px;
    }

    .navbar .dropdown-item {
        color: #333;
    }

    .navbar .dropdown-item:hover {
        background-color: #f1f1f1;
    }

    .navbar a.active {
        background-color: #007BFF;
        color: #fff;
    }

    .container {
        margin-left: 270px; /* To give space for the navbar */
        padding: 20px;
        background: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        color: #2c3e50;
        font-size: 2.5rem;
        font-weight: bold;
        margin-top: 20px;
    }

    /* Dashboard Cards */
    .dashboard-cards {
        display: flex;
        justify-content: space-between;
        margin-top: 30px;
    }

    .dashboard-card {
        background-color: #007BFF;
        color: white;
        border-radius: 8px;
        width: 23%;
        padding: 20px;
        text-align: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .dashboard-card h4 {
        font-size: 1.5rem;
        margin-bottom: 10px;
    }

    .dashboard-card p {
        font-size: 1.25rem;
    }

    .links {
        display: flex;
        justify-content: space-around;
        margin-top: 40px;
    }

    .links a {
        display: inline-block;
        text-decoration: none;
        padding: 15px 25px;
        background-color: #007BFF;
        color: white;
        border-radius: 5px;
        font-size: 18px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .links a:hover {
        background-color: #0056b3;
    }

    .dropdown-toggle::after {
        display: none !important;
    }
</style>
</head>
<body>

    <!-- Left Sidebar Navbar -->
    <div class="navbar">
        <a href="adminhome" class="active">Home</a>
        <div class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Manage Customers</a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="createcustomer">Add New Customer</a>
                <a class="dropdown-item" href="viewallcustomers">View All Customers</a>
                <a class="dropdown-item" href="updatecustomer">Update Customer</a>
                <a class="dropdown-item" href="deletecustomer">Delete Customer</a>
            </div>
        </div>
        <a href="viewallsellers">View All Sellers</a>
        <a href="adminlogin">Logout</a>
    </div>
    <div class="container">
        <h2>Welcome, Admin!</h2>
        <p class="text-center">This is the admin dashboard where you can manage customers, sellers, and other aspects of the Online Art Gallery.</p>

        <!-- Dashboard Overview Section -->
        <div class="dashboard-cards">
            <div class="dashboard-card">
                <h4>Total Customers</h4>
                <p>10</p>
            </div>
            <div class="dashboard-card">
                <h4>Total Sellers</h4>
                <p>5</p>
            </div>
            <div class="dashboard-card">
                <h4>Total Sales</h4>
                <p>Rs.2,000</p>
            </div>
        </div>

       
        <div class="links">
            <a href="viewallcustomers">View Customers</a>
            <a href="viewallsellers">View Sellers</a>
            <a href="manageorders">Manage Orders</a>
            <a href="viewreports">View Reports</a>
        </div>
    </div>

    <!-- Include Bootstrap JS (for Dropdown functionality) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
