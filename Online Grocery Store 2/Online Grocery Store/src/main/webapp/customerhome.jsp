<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.klu.jfsd.springBoot.model.Customer"%>
<%
Customer c=(Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Home</title>
 <style>
        /* Basic Reset and Font */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            background-color: #f4f4f9;
            color: #333;
        }

        /* Top Contact Bar */
        .top-bar {
            background-color: #333;
            color: #fff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 0.9em;
        }

        .top-bar .contact-info,
        .top-bar .user-options {
            display: flex;
            align-items: center;
        }

        .top-bar .contact-info i,
        .top-bar .user-options i {
            margin-right: 5px;
        }

        .top-bar a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .top-bar a:hover {
            color: #1abc9c;
        }

        /* Navbar */
        .navbar {
            background-color: #f8f8f8;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #ddd;
        }

        .navbar .logo {
            font-size: 1.5em;
            font-weight: bold;
            color: #333;
            display: flex;
            align-items: center;
        }

        .navbar .logo img {
            width: 125px;
            height: 75px;
            margin-right: 10px;
        }

        .navbar .menu {
            display: flex;
            gap: 20px;
            font-size: 1em;
        }

        .navbar .menu a {
            color: #333;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar .menu a:hover {
            color: #3498db;
        }

        .navbar .search-bar {
            display: flex;
            align-items: center;
        }

        .navbar .search-bar input[type="text"] {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px;
            width: 200px;
            outline: none;
        }

        .navbar .search-bar button {
            padding: 6px 10px;
            border: none;
            background-color: #3498db;
            color: #fff;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .navbar .search-bar button:hover {
            background-color: #2980b9;
        }

        /* Slider Styles */
        .slider {
            width: 60%;
            height: 510px;
            margin: auto;
            position: relative;
            overflow: hidden;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
            background-color: #f5f5f5;
            border-radius: 10px;
        }

        .slider img {
            width: 90%;
            height: 470px;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease;
            border-radius: 8px;
        }

        .slider img.active {
            opacity: 1;
        }

        /* Navigation Dots */
        .navigation-button {
            text-align: center;
            margin-top: 10px;
        }

        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 5px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .active,
        .dot:hover {
            background-color: #717171;
        }

        /* Masterpieces Section */
        .masterpieces-section {
            text-align: center;
            padding: 40px 0;
        }

        .masterpieces-section h2 {
            font-size: 2em;
            margin-bottom: 30px;
        }

        .masterpieces-section .art-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .art-container .art-item {
            width: 250px;
            text-align: center;
        }

        .art-container .art-item img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 5px;
        }

        .art-container .art-item p {
            margin-top: 10px;
            font-weight: bold;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: #fff;
            padding: 40px 0;
            text-align: center;
            margin-top: 40px;
        }

        footer .footer-section {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
            padding: 20px;
        }

        footer .footer-section .footer-item {
            width: 200px;
            text-align: left;
        }

        footer .footer-section .footer-item h3 {
            color: #1abc9c;
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        footer .footer-section .footer-item p,
        footer .footer-section .footer-item a {
            color: #fff;
            font-size: 0.9em;
        }

        footer .footer-section .footer-item a {
            text-decoration: none;
        }

        footer .footer-section .footer-item a:hover {
            color: #1abc9c;
        }

        .view-all-btn:hover {
            background-color: #1abc9c;
        }

    </style>
</head>
<body>
<div>
<%@include file="CustomerNavbar.jsp" %><br/>
Welcome <%=c.getName() %>
</div>

    <!-- Image Slider -->
    <div class="slider">
        <img class="active" src="https://i.pinimg.com/474x/82/e0/23/82e023805d0d84ca8bc0a30aac6e5f37.jpg" alt="Image 1">
        <img src="https://i.pinimg.com/236x/e9/30/9e/e9309e89daa18dcbcc88581a8d84bb22.jpg" alt="Image 2">
        <img src="https://i.pinimg.com/564x/14/7c/4f/147c4fcfcc82624d64c28728618ea949.jpg" alt="Image 3">
        <img src="https://i.pinimg.com/736x/d1/79/be/d179be883aae4362fe022465d3fee356.jpg" alt="Image 4">
        <img src="https://i.pinimg.com/564x/b0/db/cc/b0dbcc1ac007b7738b94e8eaa46ead60.jpg" alt="Image 5">
        <img src="https://i.pinimg.com/564x/1a/78/2f/1a782fe2cdfbaab428d617ce5d2164f1.jpg" alt="Image 6">
    </div>

    <!-- Navigation Dots -->
    <div class="navigation-button">
        <span class="dot active" onclick="changeSlide(0)"></span>
        <span class="dot" onclick="changeSlide(1)"></span>
        <span class="dot" onclick="changeSlide(2)"></span>
        <span class="dot" onclick="changeSlide(3)"></span>
        <span class="dot" onclick="changeSlide(4)"></span>
        <span class="dot" onclick="changeSlide(5)"></span>
    </div>

    <!-- Masterpieces Section -->
    <div class="masterpieces-section">
        <h2>Masterpieces</h2>
        <div class="art-container">
            <!-- Suhas Roy's Art -->
            <div class="art-item">
                <img src="https://www.myindianart.com/uploads/appimage_500/17305349861730534986shuva_25x25_aooc_2.jpg" alt="Suhas Roy Art">
                <p>Suhas Roy</p>
            </div>
            <!-- Paritosh Sen's Art -->
            <div class="art-item">
                <img src="https://www.myindianart.com/uploads/appimage_500/17305350551730535055shuva_25x25_aooc_1.jpg" alt="Paritosh Sen Art">
                <p>Paritosh Sen</p>
            </div>
            <!-- Bratin Khan's Art -->
            <div class="art-item">
                <img src="https://www.myindianart.com/uploads/appimage_500/17007331831700733183811cd6e5_d2d4_4db1_b362_1897d9e4c9ab.jpeg" alt="Bratin Khan Art">
                <p>Bratin Khan</p>
            </div>
            <!-- Ramesh Gorjala's Art -->
            <div class="art-item">
                <img src="https://www.myindianart.com/uploads/appimage_500/17053133571705313357b_prabha_36x48.jpeg" alt="Ramesh Gorjala Art">
                <p>Ramesh Gorjala</p>
            </div>
        </div>
   
    </div>

    <!-- Footer Section -->
    <footer>
        <div class="footer-section">
            <!-- Contact Info -->
            <div class="footer-item">
                <h3>Contact Us</h3>
                <p><i class="fa fa-phone"></i> Phone: 8374463939</p>
                <p><i class="fa fa-envelope"></i> Email: avinashreddy2428@yahoo.in</p>
                <p><i class="fa fa-map-marker-alt"></i> Address: Vijayawada, Guntur</p>
            </div>

            <!-- Useful Links -->
            <div class="footer-item">
                <h3>Useful Links</h3>
                <p><a href="/about">About Us</a></p>
                <p><a href="/services">Services</a></p>
                <p><a href="/contact">Contact</a></p>
            </div>
        </div>
    </footer>
    <script>
        var imgs = document.querySelectorAll('.slider img');
        var dots = document.querySelectorAll('.dot');
        var currentImg = 0;
        var interval = 3000; // 3 seconds

        function changeSlide(n) {
            // Reset the opacity of all images and remove the active class from dots
            imgs.forEach(img => img.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));

            // Set the current image and dot as active
            currentImg = n;
            imgs[currentImg].classList.add('active');
            dots[currentImg].classList.add('active');
        }

        function autoSlide() {
            // Move to the next image
            currentImg = (currentImg + 1) % imgs.length;
            changeSlide(currentImg);
        }

        // Start the automatic slide
        var timer = setInterval(autoSlide, interval);

        // Allow manual change of slide and reset the timer
        function manualSlide(n) {
            clearInterval(timer); // Stop the auto-slide
            changeSlide(n); // Change to the selected slide
            timer = setInterval(autoSlide, interval); // Restart the auto-slide
        }

        // Bind the manualSlide function to dot clicks
        dots.forEach((dot, index) => {
            dot.onclick = () => manualSlide(index);
        });



</body>
</html>