<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Land Registration Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fffb0797;
            padding: 10px 20px;
            color: #fff;
        }
        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 3px;
            transition: background-color 0.3s;
            background-color: #000;
        }
        .navbar a:hover {
            background-color: #555;
        }
        .logo {
            width: 70px;
            height: auto;
            border-radius: 40px;
        }
        .navbar-right {
            display: flex;
            flex-direction: row;
        }
        .navbar-right a {
            margin-left: 10px;
        }
        .navbar-right a:first-child {
            margin-left: auto; /* Pushes the first item to the right */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        .transfer-form {
            text-align: center;
            margin-top: 30px;
            margin: 50px auto;
            width: 31%;
        }
        .transfer-form form {
            display: inline-block;
            text-align: left;
            background-color: #ffff99;
            padding: 20px;
        }
        .transfer-form h2 {
            text-align: center;
        }
        .transfer-form form div {
            margin-bottom: 10px;
        }
        .input-group {
            margin-bottom: 20px;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
        }
        .input-group input {
            width: calc(106% - 28px);
            padding: 5px;
            border: 1px solid #333333; /* Dark border color */
        }
        .transfer-form button {
            background-color: #ffcc00;
            color: #333333;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }
        .transfer-form button:hover {
            background-color: #ffee99;
            border-radius: 5px;
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div class="navbar">
    <img src="https://w1.pngwing.com/pngs/484/657/png-transparent-real-estate-conservador-de-bienes-raices-de-santiago-property-goods-asi-land-registration-propiedad-horizontal-bene-mobile.png" alt="Logo" class="logo">
    <div class="navbar-right">
        <a href="#">View Profile</a>
        <a href="#">Logout</a>
        <a href="#">Home</a>
    </div>
</div>
<div class="container">
    




<table>
    <tr>
        <th>Reg ID</th>
        <th>Registration Office</th>
        <th>District</th>
        <th>State</th>
        <th>Owner</th>
        <th>Postal Address of Applicant (with Pin Code)</th>
        <th>Type of Property</th>
        <th>Detail Particulars of the Land</th>
        <th>Date</th>
        <th>Status</th>
    </tr>
    <tbody>
    <c:forEach items="${lists}" var="patient">
    <tr>
        <td><c:out value="${patient.id}"/></td>
        <td><c:out value="${patient.registration_office}"/></td>
        <td><c:out value="${patient.district}"/></td>
        <td><c:out value="${patient.state}"/></td>
        <td><c:out value="${patient.owner}"/></td>
        <td><c:out value="${patient.pin}"/></td>
        <td><c:out value="${patient.type}"/></td>
        <td>
            <strong>District:, State:</strong> <c:out value="${patient.district}"/>, <c:out value="${patient.state}"/><br>
            <strong>Subdivision:</strong> <c:out value="${patient.subdivision}"/><br>
            <strong>Road Name:</strong> <c:out value="${patient.road}"/><br>
            <strong>Municipality/Gram Panchayat:</strong> <c:out value="${patient.muncipal}"/><br>
            <strong>Total Set Forth Value of Land:</strong> <c:out value="${patient.price}"/><br>
        </td>
        <td><c:out value="${patient.date}"/></td>
        <td><c:out value="${patient.status}"/></td>
    </tr>
    </c:forEach>
    </tbody>

    <!-- Add more rows as needed -->
</table>
</div>
<section class="transfer-form">
    <h2>Verify Land Ownership</h2>
    <form action="confirm" method="POST">
        <div class="input-group">
            <label for="landID">Land ID:</label>
            <input type="text" id="landID" name="landID" required>
        </div>
        <div class="input-group">
            <label for="status">Status</label>
            <select id="status" name="status">
                <option value="pending">Pending</option>
                <option value="approve">Approve</option>
                <option value="deny">Deny</option>
            </select>
        </div>

        <button type="submit">Confirm</button>
    </form>
</section>

</body>
</html>