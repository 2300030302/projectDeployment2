<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klu.jfsd.springBoot.model.Customer"%>
<%
Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Profile</title>
    <style>
        /* General reset and body styling */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e8f0f2;
            color: #333;
        }

        /* Container styling */
        .container {
            max-width: 700px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            border-top: 5px solid #00bcd4;
        }

        /* Heading styling */
        h2 {
            font-size: 2.5em;
            text-align: center;
            color: #00bcd4;
            margin-bottom: 20px;
            font-weight: 600;
        }

        /* Profile detail styling */
        .profile-detail {
            margin: 15px 0;
            font-size: 18px;
            line-height: 1.8;
            color: #555;
        }

        .profile-label {
            font-weight: 700;
            color: #2f2f2f;
            margin-right: 15px;
        }

        /* Adding hover effect on profile details */
        .profile-detail:hover {
            background-color: #f1f1f1;
            padding: 5px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        /* Navbar inclusion spacing */
        .navbar-container {
            padding: 0 20px;
        }

        /* Footer Styling */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #00bcd4;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@include file="CustomerNavbar.jsp" %><br/>
    <div class="container">
        <h2>My Profile</h2><br/>
        <div class="profile-detail">
            <span class="profile-label">Name:</span> <%= c.getName() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Email:</span> <%= c.getEmail() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Date-Of-Birth:</span> <%= c.getDateofbirth() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Contact:</span> <%= c.getContactno() %>
        </div>
        <div class="profile-detail">
            <span class="profile-label">Location:</span> <%= c.getLocation() %>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 My Web Application | <a href="privacy-policy.jsp">Privacy Policy</a></p>
    </footer>
</body>
</html>
