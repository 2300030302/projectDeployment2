<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mail Sent Confirmation</title>

<style>
  /* Basic reset for margin and padding */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  /* Body styling */
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fc;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  /* Container for the success message */
  .message-box {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 400px;
    font-size: 18px;
    color: #333;
  }

  /* Heading style */
  .message-box h2 {
    color: #28a745;
    font-size: 24px;
    margin-bottom: 20px;
  }

  /* Success icon */
  .message-box .icon {
    font-size: 50px;
    color: #28a745;
    margin-bottom: 15px;
  }

  /* Button to go back or do another action */
  .message-box .btn {
    display: inline-block;
    background-color: #28a745;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 5px;
    font-size: 16px;
    margin-top: 20px;
    cursor: pointer;
  }

  /* Hover effect for the button */
  .message-box .btn:hover {
    background-color: #218838;
  }
</style>

</head>
<body>

<div class="message-box">
  <div class="icon">✔</div>
  <h2>Mail Sent Successfully</h2>
  <p>Your mail has been sent successfully. You can check your inbox for further details.</p>
  <a href="home.jsp" class="btn">Go Back</a>
</div>

</body>
</html>
