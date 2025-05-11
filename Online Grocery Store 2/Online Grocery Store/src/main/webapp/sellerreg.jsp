<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration</title>
    <!-- Bootstrap CSS link -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 30px;
            border: 2px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h3 {
            margin-bottom: 30px;
            font-weight: bold;
        }
        .form-control {
            border-radius: 4px;
        }
        .btn-custom {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
        }
        .btn-reset {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <%@ include file="SellerNavbar.jsp" %>

    <div class="form-container">
        <h3 class="text-center">Seller Registration Form</h3>
        <form method="POST" action="insertseller">
            <div class="form-group">
                <label for="sname">Enter Name</label>
                <input type="text" id="sname" name="sname" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="semail">Enter Email ID</label>
                <input type="email" id="semail" name="semail" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="spwd">Enter Password</label>
                <input type="password" id="spwd" name="spwd" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="slocation">Enter Location</label>
                <input type="text" id="slocation" name="slocation" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="scontact">Enter Contact</label>
                <input type="number" id="scontact" name="scontact" class="form-control" required />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-success btn-custom" value="Register" />
            </div>
            <div class="form-group">
                <input type="reset" class="btn btn-reset" value="Clear" />
            </div>
        </form>
    </div>

    <!-- Bootstrap JS and jQuery links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
