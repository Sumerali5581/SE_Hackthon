<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Government Dashboard - Land Registry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #0f0d0d;
        }
        body h1{
            margin: auto 10px;
            text-align: center;
            margin-top: 30px;
            color:#fff
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


        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .panel {
            width: 300px;
            padding: 20px;
            background-color: #fffb0797;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin: 20px;
            text-align: center;
            transition: transform 0.3s;
        }

        .panel:hover {
            transform: translateY(-5px);
        }

        h2 {
            color: #0f0d0d;
        }

        p {
            color: #010000;
            margin-bottom: 20px;
            text-align: left;
        }

        a {
            display: block;
            margin-top: 20px;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }

        .icon {
            width: 50px;
            height: 50px;
            margin-bottom: 10px;
        }
        .image {
            width: 400px;
            height: 400px;
            border-radius: 50%;
            margin-right: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <img src="https://w1.pngwing.com/pngs/484/657/png-transparent-real-estate-conservador-de-bienes-raices-de-santiago-property-goods-asi-land-registration-propiedad-horizontal-bene-mobile.png" alt="Logo" class="logo">
        <div class="navbar-right">
            <a href="#">View Profile</a>
            <a href="http://localhost:9090/logout">Logout</a>
            <a href="http://localhost:9090/officer">Home</a>
        </div>
    </div>
    
    <h1>Government Dashboard</h1>
    <div class="container">
        <img class="image" src="https://img.freepik.com/premium-photo/hand-holding-house-real-estate-property-model_939253-710.jpg"/>
        <div class="panel">
            <img src="https://cdn-icons-png.flaticon.com/512/9850/9850812.png" alt="Database Icon" class="icon">
            <h2>View Reports</h2>
            <p>Access the database of land registrations to view details of registered properties and owners. Search, filter, and export data for analysis and reporting purposes.</p>
            <a href="http://localhost:9090/create">View</a>
        </div>
        <div class="panel">
            <img src="https://cdn3.vectorstock.com/i/1000x1000/37/82/transfer-user-logo-icon-design-vector-22953782.jpg" alt="Transfer Icon" class="icon">
            <h2>LandOwner Transfer Panel</h2>
            <p>Transfer land ownership to another individual or entity. This action requires verification and approval. The process involves submitting a transfer request with necessary documentation and payment of applicable fees. Upon approval, the ownership records are updated to reflect the new owner.</p>
            <a href="http://localhost:9090/owner">Transfer</a>
        </div>
        <div class="panel">
            <img src="https://cdn-icons-png.flaticon.com/512/3474/3474543.png" alt="Land Registration Icon" class="icon">
            <h2>View And Verify Land Registration</h2>
            <p>This includes checking the accuracy of the information provided, verifying the ownership of the land, and ensuring that all necessary documentation is in order. The panel provides access to the database of land registrations, allowing officers to search, filter, and view detailed information about registered properties and owners.</p>
            <a href="http://localhost:9090/gov">Verify</a>
        </div>
    </div>
</body>
</html>
