<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        *{
    padding: 0px;
    margin: 0px;
}
body {
    font-family: Arial, sans-serif;
    background-color: #FFFFCC; /* Shades of yellow */
    color: #333333; /* Dark text color */
    margin: 0;
    padding: 0;
}
.navbar{
    padding: 1.2rem;
    box-sizing: border-box;
    display: flex;
    flex-direction: row;
    gap: 2rem;
    background-color: #FFD700;
}
        a:hover{
            scale: 1.1;
            transition: all .2s ease-in-out;
        }
.navbar-nav{
    display: flex;
    flex-direction: row;
    gap: 2rem;
    text-decoration: none;
}
a{
    text-decoration: none;
    color: black;
}
.container{
    display: grid;
    gap: 3rem;
    width: 100%;
    height: auto;
    box-sizing: border-box;
    padding: 2rem;
}
.col-1{
    grid-column: 1;
    display: flex;
    gap: 3rem;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    
}

.col-2{
 grid-column: 2;
}
.card-2{
    
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 10px 10px 5px 0px rgba(125,118,125,1);
    
}
.card-1{
    width: 70%;
    height: 10rem;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    box-sizing: border-box;
    padding: 5px;
    border-radius: 5px;
    box-shadow: 10px 10px 5px 0px rgba(125,118,125,1);
    background-color: white;
}
.card-1:hover{
    scale: 1.1;
    transition: all .5s ease;
}
/* .card-1{
   width: 50%;
   height: 3rem;
   background-color: white;
   padding: 5px;
   border-radius: 5px;
   box-shadow: 10px 10px 5px 0px rgba(125,118,125,1);
} */

.formgrid{
    display: grid;
    gap: 2rem;
}
.g-1{
    grid-column: 1;
}
.g-2{
    grid-column: 2;
}
h2 {
    margin-bottom: 20px;
    text-align: center;
}
label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}
input[type="text"], select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type="submit"]:hover {
    background-color: #45a049;
}
</style>
</head>
<body >
    <nav class="navbar ">
        <div class="collapse" >
          <div class="navbar-nav">
            <a class="nav-item " href="http://localhost:9090/user">Home </a>
            <a class="nav-item" href="http://localhost:9090/logout">Logout</a>
            <a class="nav-item" href="http://localhost:9090/status">Property</a>
          </div>
        </div>
      </nav>
    <div class="container">
        <div class="col-1">
            <div class="card-1">
                <h1>User</h1>
                <h4>Name: ${Name}</h4>
                <h4>Email: ${Email}</h4>
                <h4>Land Registeration</h4>
            </div>
            <div class="card-1">
                <h1>Fraud Report</h1>
                <p>Tell us if incounterd any fraud</p>
                <a href="#">Report</a>
            </div>
            <div class="card-1">
                <h1>Land Owned</h1>
            </div>
        </div>
        <div class="col-2">
            <div class="card-2">
                <h2>Land Registration Form</h2>
                <form action="gov_register" method="post">
                    <div class="formgrid">
                        <div class="g-1">
                            <label for="registration_office">Registration Office:</label>
                            <input type="text" id="registration_office" name="registration_office" required>
        
                            <label for="district">District:</label>
                            <input type="text" id="district" name="district" required>
                        </div>
                        <div class="g-2">
                            <label for="state">State:</label>
                            <input type="text" id="state" name="state" required>
        
                            <label for="name">Name of Applicant:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                    </div>
                    
                    <label for="postal_address">Postal Address of Applicant (with Pin Code):</label>
                    <input type="text" id="postal_address" name="postal_address" required>

                    <label for="property_type">Type of Property:</label>
                    <select id="property_type" name="property_type" required>
                        <option value="">Select Property Type</option>
                        <option value="land_with_structures">Land with Structures</option>
                        <option value="vacant_land">Vacant Land</option>
                        <option value="flat_apartment">Flat/Apartment</option>
                        <option value="commercial_complex">Commercial Complex</option>
                    </select>

                    <label for="detail_particulars">Detail Particulars of the Land:</label>
                    <div class="formgrid">
                        <div class="g-1">
                            <label for="state">State:</label>
                            <input type="text" id="state1" name="state1" required>
                            <label for="district">District:</label>
                            <input type="text" id="district1" name="district1" required>
                            <label for="name_of_municipality_gram_panchayat">Name of municipality/gram panchayat:</label>
                            <input type="text" id="name_of_municipality_gram_panchayat" name="name_of_municipality_gram_panchayat" required>
        
                        </div>
                        <div class="g-2">
                            <label for="subdivision">Subdivision:</label>
                            <input type="text" id="subdivision" name="subdivision" required>
        
                            <label for="road_name">Road name:</label>
                            <input type="text" id="road_name" name="road_name" required>

                            <label for="land_value"> Market value of land in Rs:</label>
                            <input type="text" id="land_value" name="land_value" required>
                        </div>
                    </div>
                    
                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" required>
                    <br />
                    <input style="margin-top:1.5rem ;" type="submit" value="Submit">
                </form>
            </div>
        </div>
    </div>

</body>
</html>
