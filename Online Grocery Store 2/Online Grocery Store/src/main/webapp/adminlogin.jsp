<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="Navbar.jsp" %>
<h4 align="center" style="color:red">
<c:out value="${message}"></c:out><br/>
</h4>
 <h3 align="center">Admin Login Form</h3>
 <div class="form-control">
 <form method="POST" action="checkadminlogin">
  <label>Enter Username</label>
  <input type="text" class="form-control" name="ausername" required><br/>
  <label>Enter Password</label>
  <input type="password" name="apwd" class="form-control" required/><br/>
  <input type="submit" class="btn btn-success" value="Login"/>
  <input type="reset" class="btn btn-success" value="clear"/>
 </form>
 </div>
</body>
</html>