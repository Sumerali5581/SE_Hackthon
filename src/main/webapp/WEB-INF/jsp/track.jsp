<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Record Tracking ID</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 400px;
            text-align: center;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .message {
            margin-bottom: 20px;
        }
        .button-container {
            margin-top: 20px;
        }
        .back-button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="message">
        <h2>Your record tracking ID is:</h2>
        <p>${Id}</p> <!-- Replace XYZ123456 with the actual tracking ID -->
    </div>
    <div class="button-container">
        <a href="http://localhost:9090/user">
        <button class="back-button" >Back</button>
        </a>
    </div>
</div>
</body>
</html>