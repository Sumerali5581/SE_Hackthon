<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Land Ownership Transfer</title>
    
</head>
<style>
    body {
    background-color: #ffff99; /* Blue */
    color: black; /* Dark Gray */
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #FFD700;
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

header {
    background-color: #007BFF; /* Blue */
    color: white;
    text-align: center;
    padding: 20px 0;
}

header h1 {
    margin: 0;
}

.land-records {
    margin: 50px auto;
    width: 80%;
}

.land-records h2 {
    text-align: center;
    margin-top: 30px;
}

.land-records table {
    width: 100%;
    border-collapse: collapse;
}

.land-records th,
.land-records td {
    border: 1px solid #333333; /* Dark border color */
    padding: 10px;
    text-align: center;
}

.land-records th {
    background-color: #FFD700; /* Dark golden rod yellow */
    color: white;
}

.land-records tbody tr:hover {
    background-color: #f2f2f2; /* Light Gray */
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
<body>
    <div class="navbar">
        <img src="https://w1.pngwing.com/pngs/484/657/png-transparent-real-estate-conservador-de-bienes-raices-de-santiago-property-goods-asi-land-registration-propiedad-horizontal-bene-mobile.png" alt="Logo" class="logo">
        <div class="navbar-right">
            <a href="#">View Profile</a>
            <a href="#">Logout</a>
            <a href="#">Home</a>
        </div>
    </div>

    <section class="land-records">
        <h2>Land Ownership Records</h2>
        <table>
            <thead>
                <tr>
                    <th>Land ID</th>
                    <th>Land Owner</th>
                    <th>Land Survey Number</th>
                    <th>Land Area</th>
                    <th>Land Address</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>1234AB</td>
                    <td>500 sq. meters</td>
                    <td>123 Main Street</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>5678CD</td>
                    <td>750 sq. meters</td>
                    <td>456 Oak Avenue</td>
                </tr>
                <!-- Add more records as needed -->
            </tbody>
        </table>
    </section>

    <section class="transfer-form">
        <h2>Transfer Land Ownership</h2>
        <form action="#" method="POST">
            <div class="input-group">
                <label for="landID">Land ID:</label>
                <input type="text" id="landID" name="landID" required>
            </div>
            <div class="input-group">
                <label for="landOwner">Land Owner:</label>
                <input type="text" id="landOwner" name="landOwner" required>
            </div>
            <div class="input-group">
                <label for="transferID">Transfer ID:</label>
                <input type="text" id="transferID" name="transferID" required>
            </div>
            <button type="submit">Transfer Ownership</button>
        </form>
    </section>
</body>
</html>
