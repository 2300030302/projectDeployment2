<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - View All Customers</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

    /* Main Content */
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

    h3 {
        text-align: center;
        color: #2c3e50;
        font-size: 1.8rem;
        margin-top: 20px;
    }

    table {
        width: 100%;
        margin-top: 30px;
        border-collapse: collapse;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007BFF;
        color: white;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    .count {
        font-size: 1.5rem;
        font-weight: bold;
        color: #007BFF;
    }
</style>
</head>
<body>

<!-- Include the Sidebar Navbar -->
<%@ include file="adminhome.jsp" %>

<!-- Main Content Area -->
<div class="container">
    <div>
        
        <h3>View All Sellers</h3>
        <br/>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${customerlist}" var="customer">
                    <tr>
                        <td><c:out value="${customer.id}"></c:out></td>
                        <td><c:out value="${customer.name}"></c:out></td>
                        <td><c:out value="${customer.email}"></c:out></td>
                        <td><c:out value="${customer.location}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Include Bootstrap JS (for Dropdown functionality) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
