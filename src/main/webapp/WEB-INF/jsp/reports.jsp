<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Reports - Land Registry System</title>
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

        h2 {
            margin-top: 20px;
            color: #333;
        }

        ul {
            list-style-type: none;
            padding-left: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
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
            margin: 0;
            color: white;
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
    <ul>
        <li><h2>Admin Dashboard</h2></li>
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
        <h1>Generate Reports</h1>
        <p>View reports related to system faults, errors, and issues.</p>

        <h2>System Fault Reports</h2>
        <ul>
            <li><a href="#">Report 1 - Database Connection Errors</a></li>
            <li><a href="#">Report 2 - Server Downtime Analysis</a></li>
            <li><a href="#">Report 3 - Application Performance Issues</a></li>
            <!-- Add more system fault reports here -->
        </ul>

        <h2>Other Reports</h2>
        <ul>
            <li><a href="#">Report 4 - User Activity Logs</a></li>
            <li><a href="#">Report 5 - Financial Transactions Overview</a></li>
            <li><a href="#">Report 6 - Property Listing Statistics</a></li>
            <!-- Add more general reports here -->
        </ul>
    </div>
</body>

</html>
