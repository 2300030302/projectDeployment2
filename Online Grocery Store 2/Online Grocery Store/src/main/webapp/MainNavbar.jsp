<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width-device-width, initial-scale-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-...your-integrity-code..." crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-...your-integrity-code..." crossorigin="anonymous"></script>
<title>JFSD SDP</title>
</head>
<body >
<div>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #d4edda;">
        <div class="container-fluid">
            <!-- Logo -->
            <a class="navbar-brand" href="#">
                <img src="data:image/png;base64,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" alt="Logo" style="height: 50px; width: 50px; border-radius: 50%;">
                Online Art Gallery
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="home" style="font-size: 18px; padding: 10px 20px;">
                            <img src="data:image/png;base64,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" alt="Home Icon" style="height: 20px; width: 20px; margin-right: 10px;">
                            Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="customerlogin" style="font-size: 18px; padding: 10px 20px;">
                            <img src="https://cdn-icons-png.flaticon.com/128/16206/16206813.png" alt="Register Icon" style="height: 20px; width: 20px; margin-right: 10px;">
                            Customer Login
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="sellerlogin" style="font-size: 18px; padding: 10px 20px;">
                            <img src="https://cdn-icons-png.flaticon.com/128/5264/5264565.png" alt="Login Icon" style="height: 20px; width: 20px; margin-right: 10px;">
                            Seller Login
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

 
</body>
</html>