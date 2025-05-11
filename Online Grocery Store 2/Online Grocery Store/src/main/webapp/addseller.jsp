<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Sidebar Styles (from adminhome.jsp) */
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

        /* Main Content */
        .container {
            margin-left: 270px; /* To give space for the navbar */
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h3 {
            text-align: center;
            color: #2c3e50;
            font-size: 2rem;
            font-weight: bold;
            margin-top: 20px;
        }

        .form-control {
            width: 80%;
            margin: 10px auto;
        }

        .btn {
            width: 45%;
            margin: 20px 5% 0 5%;
        }

        .form-check {
            margin-top: 10px;
        }

        label {
            font-size: 1rem;
            font-weight: 600;
            margin-top: 10px;
        }

        .mb-3 {
            margin-top: 20px;
        }

    </style>
</head>
<body>

<!-- Include the Sidebar Navbar -->
<%@ include file="adminhome.jsp" %>

<!-- Main Content Area -->
<div class="container">
    <h3>Add Artist</h3>
    <form method="POST" action="insertArtist">
        <div class="form-group">
            <label>Enter Name</label>
            <input type="text" class="form-control" name="arname" required>
        </div>

        <div class="form-group">
            <label>Enter Email ID</label>
            <input type="email" name="aremail" class="form-control" required>
        </div>

        <div class="form-group">
            <label>Enter Location</label>
            <input type="text" name="arlocation" class="form-control" required>
        </div>


        <div class="form-group">
            <input type="submit" class="btn btn-success" value="Add">
            <input type="reset" class="btn btn-danger" value="Clear">
        </div>
    </form>
</div>

<!-- Include Bootstrap JS (for Dropdown functionality) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
