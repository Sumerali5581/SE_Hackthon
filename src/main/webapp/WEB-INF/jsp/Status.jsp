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
    </style>
</head>
<body>

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

</body>
</html>