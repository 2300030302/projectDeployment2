<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Art Gallery</title>
<!-- Include Bootstrap for styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
    }
    .hero {
        background: orange;
        height: 80vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        text-align: center;
    }
    .hero h1 {
        font-size: 3.5rem;
        text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.8);
        animation: fadeIn 2s ease-in-out;
    }
    .hero p {
        font-size: 1.5rem;
        text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.8);
        animation: fadeIn 3s ease-in-out;
    }
    .categories img {
        border-radius: 10px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .categories img:hover {
        transform: scale(1.1);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }
    .navbar-dark .navbar-brand {
        color: white;
        font-weight: bold;
    }
    .btn-primary {
        background: linear-gradient(45deg, #6a11cb, #2575fc);
        border: none;
    }
    .btn-primary:hover {
        background: linear-gradient(45deg, #2575fc, #6a11cb);
    }
    footer {
        background: #343a40;
        color: white;
        padding: 20px 0;
        text-align: center;
    }
    footer a {
        color: #ffc107;
        text-decoration: none;
    }
    footer a:hover {
        text-decoration: underline;
    }
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
    #contact form .form-control {
        border: 2px solid #6a11cb;
        transition: border-color 0.3s;
    }
    #contact form .form-control:focus {
        border-color: #2575fc;
        box-shadow: 0 0 8px rgba(37, 117, 252, 0.3);
    }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Art Gallery</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="#categories">Categories</a></li>
            <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        </ul>
    </div>
    <div class="ml-3">
        <a href="customerlogin" class="btn btn-outline-light mr-2">Customer Login</a>
        <a href="sellerlogin" class="btn btn-outline-light">Seller Login</a>
    </div>
</nav>
<div class="hero">
    <div>
        <h1>Welcome to the Online Art Gallery</h1>
        <p>Discover, admire, and purchase stunning artwork from talented artists around the globe.</p>
        <a href="#categories" class="btn btn-primary btn-lg mt-3">Explore Gallery</a>
    </div>
</div>

<section id="categories" class="container my-5">
    <h2 class="text-center mb-4">Art Categories</h2>
    <div class="row">
        <div class="col-md-3">
            <img src="images/image1.jpeg" alt="Abstract Art" class="img-fluid">
            <h4 class="text-center mt-2">Abstract Art</h4>
        </div>
        <div class="col-md-3">
            <img src="images/images3.jpeg" alt="Landscape Art" class="img-fluid">
            <h4 class="text-center mt-2">Landscape Art</h4>
        </div>
        <div class="col-md-3">
            <img src="images/images4.jpeg" alt="Modern Art" class="img-fluid">
            <h4 class="text-center mt-2">Modern Art</h4>
        </div>
        <div class="col-md-3">
            <img src="images/images.jpg" alt="Classic Art" class="img-fluid">
            <h4 class="text-center mt-2">Classic Art</h4>
        </div>
    </div>
</section>
<section id="about" class="bg-light py-5">
    <div class="container">
        <h2 class="text-center">About Us</h2>
        <p class="text-center mt-3">Our online art gallery is a platform dedicated to connecting artists and art lovers. We showcase a wide variety of artwork from talented creators worldwide, allowing visitors to explore and purchase their favorite pieces. Join us to celebrate the beauty and diversity of art!</p>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="container my-5">
    <h2 class="text-center">Contact Us</h2>
    <p class="text-center mb-4">Have questions or inquiries? Feel free to reach out to us!</p>
    <form class="mx-auto" style="max-width: 600px;" method="POST" action="sendMail">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="Cname" id="name" placeholder="Enter your name" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" class="form-control" name="Cemail" id="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
            <label for="subject">Subject:</label>
            <input type="text" class="form-control" name="Csubject" id="subject" required>
        </div>
        <div class="form-group">
            <label for="message">Message</label>
            <textarea class="form-control" name="Cmessage" id="message" rows="4" placeholder="Enter your message" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Send Message</button>
    </form>
</section>

<footer>
    <div style="text-align: center; background-color: #0077b6; color: white; padding: 20px 0;">
        <p>&copy; 2024 Online Art Gallery | All rights reserved.</p>
        
        <!-- Social Media Icons -->
        <div style="margin-top: 10px;">
            <a href="https://www.instagram.com" target="_blank" style="margin: 0 15px;">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1024px-Instagram_logo_2022.svg.png" alt="Instagram" style="width: 30px; height: 30px; vertical-align: middle;">
            </a>
            
            <a href="https://www.facebook.com" target="_blank" style="margin: 0 15px;">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/1024px-Facebook_f_logo_%282019%29.svg.png" alt="Facebook" style="width: 30px; height: 30px; vertical-align: middle;">
            </a>
            <a href="https://github.com" target="_blank" style="margin: 0 15px;">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1024px-Octicons-mark-github.svg.png" alt="GitHub" style="width: 30px; height: 30px; vertical-align: middle;">
            </a>
        </div>

        <!-- Back to Top Link -->
        <p><a href="#navbarNav" style="color: #ffffff; text-decoration: none; font-weight: bold;">Back to top</a></p>
    </div>
</footer>


<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
