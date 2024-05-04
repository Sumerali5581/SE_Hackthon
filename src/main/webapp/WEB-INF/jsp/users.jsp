<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users - Land Registry System</title>
    <!-- Add your CSS styles here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0px;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-left: 250px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-danger {
            background-color: #dc3545;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }
        .sidebar {
            background-color: #333;
            color: #fff;
            width: 250px;
            height: 100vh;
            position: fixed;
            overflow: auto;
        }

        .sidebar h2 {
            padding: 20px;
            margin: 0;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar li {
            padding: 10px 20px;
        }

        .sidebar a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>

<body>
<div class="sidebar">
    <h2>Admin Dashboard</h2>
    <ul>

        <li><a href="http://localhost:9090/users"
        <%--                   onclick="loadContent('users.html')"--%>
        >Manage Users</a></li>
        <li><a href="http://localhost:9090/reports"
        <%--                   onclick="loadContent('reports.html')"--%>
        >Generate Reports</a></li>
        <li><a href="http://localhost:9090/settings"
        <%--                   onclick="loadContent('settings.html')"--%>
        >System Settings</a></li>
        <li><a href="http://localhost:9090/logout"
        <%--                   onclick="loadContent('properties.html')"--%>
        >Logout</a></li>
    </ul>
</div>
<div class="container">
    <h1>Manage Users</h1>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Role</th>
<%--            <th>Action</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${lists}" var="patient">
            <tr>
                <td><c:out value="${patient.id}" /></td>
                <td><c:out value="${patient.name}" /></td>
                <td><c:out value="${patient.email}" /></td>
                <td><c:out value="${patient.role}" /></td>
<%--                <td><a href="#" class="btn btn-danger">Delete</a></td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>

</html>