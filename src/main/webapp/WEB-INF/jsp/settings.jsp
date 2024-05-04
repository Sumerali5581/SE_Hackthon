<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Properties - Land Registry System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0px;
            background-color: #f0f0f0;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-left: 250px;
        }

        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }

        .property-list {
            margin-top: 20px;
        }

        .property-item {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 15px;
            background-color: #f9f9f9;
        }

        .property-item h3 {
            margin-top: 0;
            color: #333;
        }

        .property-item p {
            margin-bottom: 10px;
            color: #555;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            margin-right: 10px;
            transition: background-color 0.3s ease;
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
    <h1>Manage Settings</h1>
    <p>Welcome to the property management section of the Land Registry System. Here, you can manage system settings related to properties and perform administrative tasks.</p>

    <div class="property-list">
        <div class="property-item">
            <h3>System Settings 1</h3>
            <p><strong>Setting:</strong> Property Alerts</p>
            <p><strong>Status:</strong> Enabled</p>
            <a href="#" class="btn">Edit Settings</a>
        </div>
        <div class="property-item">
            <h3>System Settings 2</h3>
            <p><strong>Setting:</strong> Property Notifications</p>
            <p><strong>Status:</strong> Disabled</p>
            <a href="#" class="btn">Edit Settings</a>
        </div>
        <!-- Add more system settings here -->
    </div>
</div>
</body>

</html>