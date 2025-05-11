<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klu.jfsd.springBoot.model.Seller"%>
<%
Seller s = (Seller) session.getAttribute("seller");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Profile</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9f7f9;
            color: #333;
        }

        .container {
            width: 90%;
            max-width: 650px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #0077b6;
            font-size: 2em;
            margin-bottom: 30px;
            text-transform: uppercase;
        }

        .profile-detail {
            margin-bottom: 20px;
            font-size: 1.1em;
            color: #4a4a4a;
            line-height: 1.6;
        }

        .profile-label {
            font-weight: bold;
            color: #0077b6;
        }

        .profile-detail span {
            display: inline-block;
            width: 120px;
            font-weight: bold;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: #f76c6c;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #ff4747;
        }

        .profile-detail a {
            color: #0077b6;
            text-decoration: none;
            font-weight: bold;
        }

        .profile-detail a:hover {
            text-decoration: underline;
        }

        .profile-header {
            border-bottom: 2px solid #f1f1f1;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<%@ include file="SellerNavbar.jsp" %>
    <div class="container">
        <div class="profile-header">
            <h2>My Profile</h2>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Name:</span> <%= s.getName() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Email:</span> <%= s.getEmail() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Id:</span> <%= s.getId() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Contact:</span> <%= s.getContact() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Location:</span> <%= s.getLocation() %>
        </div>
        <!-- Optional: Add a button to edit profile or logout -->
        <a href="editProfile.jsp" class="btn">Edit Profile</a>
    </div>
</body>
</html>
