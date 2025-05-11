<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>

<style>
  .registration-box {
    width: 500px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }

  .registration-box h3 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
  }

  .registration-box label {
    display: block;
    margin-bottom: 5px;
    font-size: 14px;
    color: #555;
  }

  .registration-box input[type="text"],
  .registration-box input[type="email"],
  .registration-box input[type="password"],
  .registration-box input[type="date"],
  .registration-box input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
  }

  .registration-box input[type="radio"] {
    margin-right: 5px;
  }

  .registration-box .form-check {
    margin-bottom: 10px;
  }

  .registration-box .form-check-label {
    font-size: 14px;
    color: #555;
  }

  .registration-box input[type="submit"],
  .registration-box input[type="reset"] {
    width: calc(50% - 10px);
    padding: 10px;
    margin: 5px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    color: white;
  }

  .registration-box input[type="submit"] {
    background-color: #28a745;
  }

  .registration-box input[type="submit"]:hover {
    background-color: #218838;
  }

  .registration-box input[type="reset"] {
    background-color: #ffc107;
  }

  .registration-box input[type="reset"]:hover {
    background-color: #e0a800;
  }
</style>

<script>
  function validateForm() {
    var cname = document.forms["customerForm"]["cname"].value;
    var cgender = document.forms["customerForm"]["cgender"].value;
    var cdob = document.forms["customerForm"]["cdob"].value;
    var cemail = document.forms["customerForm"]["cemail"].value;
    var cpwd = document.forms["customerForm"]["cpwd"].value;
    var clocation = document.forms["customerForm"]["clocation"].value;
    var ccontact = document.forms["customerForm"]["ccontact"].value;

    if (cname == "") {
      alert("Name must be filled out");
      return false;
    }

    if (cgender == "") {
      alert("Gender must be selected");
      return false;
    }

    if (cdob == "") {
      alert("Date of Birth must be filled out");
      return false;
    }

    // Validate Email
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!emailPattern.test(cemail)) {
      alert("Please enter a valid email address");
      return false;
    }

    // Validate Password (at least 6 characters)
    if (cpwd.length < 6) {
      alert("Password must be at least 6 characters long");
      return false;
    }

    if (clocation == "") {
      alert("Location must be filled out");
      return false;
    }

    // Validate Contact number (must be 10 digits)
    var contactPattern = /^[0-9]{10}$/;
    if (!contactPattern.test(ccontact)) {
      alert("Please enter a valid 10-digit contact number");
      return false;
    }

    return true;
  }
</script>

</head>
<body>
<%@ include file="Navbar.jsp" %>
<div class="registration-box">
  <h3>Customer Registration Form</h3>
  <form name="customerForm" method="POST" action="insertcustomer" onsubmit="return validateForm()">
    <label>Enter Name</label>
    <input type="text" name="cname" required>

    <div>
      <label>Select Gender</label>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="cgender" value="male" id="genderMale" required>
        <label class="form-check-label" for="genderMale">Male</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="cgender" value="female" id="genderFemale" required>
        <label class="form-check-label" for="genderFemale">Female</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="cgender" value="others" id="genderOthers" required>
        <label class="form-check-label" for="genderOthers">Prefer Not to Say</label>
      </div>
    </div>

    <label>Enter Date Of Birth</label>
    <input type="date" name="cdob" required>

    <label>Enter Email ID</label>
    <input type="email" name="cemail" required>

    <label>Enter Password</label>
    <input type="password" name="cpwd" required>

    <label>Enter Location</label>
    <input type="text" name="clocation" required>

    <label>Enter Contact</label>
    <input type="number" name="ccontact" required>

    <input type="submit" value="Register">
    <input type="reset" value="Clear">
  </form>
</div>
</body>
</html>
