<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Exhibitions</title>
    <link rel="stylesheet" href="/css/styles.css">
    <script>
        function confirmDelete(exhibitionName) {
            return confirm(`Are you sure you want to delete the exhibition: ${exhibitionName}?`);
        }
    </script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #444;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .actions {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .search-box {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        input[type="text"] {
            padding: 5px;
            width: 200px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            background-color: #5cb85c;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4cae4c;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table th, table td {
            text-align: left;
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #f4f4f4;
            color: #333;
        }
        table tr:hover {
            background-color: #f1f1f1;
        }
        .pagination {
            margin-top: 20px;
            text-align: center;
        }
        .pagination a {
            padding: 8px 12px;
            margin: 0 5px;
            text-decoration: none;
            color: #337ab7;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .pagination a.active {
            background-color: #337ab7;
            color: white;
            border: none;
        }
        .pagination a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Exhibitions</h1>
        <div class="actions">
            <!-- Search functionality -->
            <div class="search-box">
                <label for="search">Search:</label>
                <input type="text" id="search" name="search" placeholder="Search exhibitions...">
                <button onclick="alert('Search feature coming soon!')">Search</button>
            </div>
            <!-- Add new exhibition -->
            <a href="/exhibitions/add">
                <button>Add New Exhibition</button>
            </a>
        </div>

        <!-- Exhibition table -->
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            
        </table>

        
    </div>
</body>
</html>
