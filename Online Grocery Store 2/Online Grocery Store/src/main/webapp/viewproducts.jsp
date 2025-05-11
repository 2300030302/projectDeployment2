<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paintings</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<div>
<%@include file="CustomerNavbar.jsp" %>
</div>
<div class="container">
    <div>
        <h3>View All Paintings</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Image</th>  <!-- Add an Image column -->
                    <th>Title</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${customerlist}" var="seller">
                    <tr>
                        <td><c:out value="${seller.id}"></c:out></td>
                        
                        <!-- Display image (using EL to get the id) -->
                        <td>
                            <img class="painting-image" src="GetPaintingImage?id=${seller.id}" alt="Painting Image">
                        </td>
                        
                        <td><c:out value="${seller.title}"></c:out></td>
                        <td><c:out value="${seller.description}"></c:out></td>
                        <td><c:out value="${seller.price}"></c:out></td>
                        <td>
                          <a href="/orders">Pay With RazorPay</a>
                         </td>
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
