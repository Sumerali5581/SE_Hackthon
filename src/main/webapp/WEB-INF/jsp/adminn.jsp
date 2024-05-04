<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Land Registry System - Admin Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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

        .content {
            margin-left: 250px;
            padding: 50px;
        }

        .content h2 {
            margin-top: 0;
        }

        .chart-container {
            display: flex;
            justify-content: space-around;
            margin-top: 0px;
        }

        canvas {
            max-width: 400px;
            margin-bottom: 20px;
        }

        canvas#pieChart {
    margin-top: -23px; /* Adjusted negative margin to move the pie chart upward */
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

    <div class="content" id="dynamic-content">
        <!-- Dynamic content will be loaded here -->
        <div id="overview">
            <h2>Dashboard Overview</h2>
            <div class="chart-container">
                <canvas id="barChart"></canvas>
                <canvas id="pieChart"></canvas>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Bar Chart Data
            var barChartData = {
                labels: ['January', 'February', 'March', 'April', 'May'],
                datasets: [{
                    label: 'Property Sales',
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1,
                    data: [10, 20, 15, 25, 30]
                }]
            };

            var barChartOptions = {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            };

            // Create Bar Chart
            var barChart = new Chart(document.getElementById('barChart'), {
                type: 'bar',
                data: barChartData,
                options: barChartOptions
            });

            // Pie Chart Data
            var pieChartData = {
                labels: ['Residential', 'Commercial', 'Industrial', 'Agricultural'],
                datasets: [{
                    label: 'Property Types',
                    backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4CAF50'],
                    borderColor: '#fff',
                    data: [30, 20, 15, 35]
                }]
            };

            // Create Pie Chart
            var pieChart = new Chart(document.getElementById('pieChart'), {
                type: 'pie',
                data: pieChartData
            });
        });

        function loadContent(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('dynamic-content').innerHTML = data;
                })
                .catch(error => console.error('Error fetching content:', error));
        }
    </script>
</body>

</html>
