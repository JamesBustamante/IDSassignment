<%-- 
    Document   : register
    Created on : 09/04/2019, 5:13:15 PM
    Author     : Ciaran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    </head>
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        
        <section>
            <div class="container">
                <div class="col-6 offset-md-3">
                    <div class="offset-3">
                        <h1 class="display-3"><b>Register</b></h1>
                    </div>
                    <br>
                    <div class="offset-1">
                        <p> Enter your details below to register for the Movie Store</p>
                        <p> Please make sure you haven't left any empty fields, have a legitimate email address and your password must have: </p>
                        <p> At least 8 characters, must contain 1 uppercase letter, 1 lowercase letter and 1 number</p>
                        <br>
                        
                    </div>

                    <div class="form-group">
                        <form action="register-action.jsp" method="POST">
                            <h3>Personal Details</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="First Name" name="firstName"/><br>
                            </div>
                             <div class="form-group">
                                <input type="text" class="form-control" placeholder="Last Name" name="lastName"/><br>
                            </div>
                            <div class="form-group">
                                <h5>Gender &nbsp &nbsp<input type="radio"   name="gender" value="male" checked> Male  <input type="radio"  name="gender" value="female"> Female<br></h5>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email" name="email"/><br>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" name="password"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="mobile Number" name="mobileNumber"/><br>
                            </div>
                            <h3>Address Details</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Street Address" name="addressResidential"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Suburb" name="addressSuburb"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Postcode" name="addressPostcode"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="State" name="addressState"/><br>
                            </div>
                            <div class="form-group">
                                <h5>Agree to terms of service &nbsp &nbsp<input type="checkbox" name="tos" class="form-group" value="check"><br></h5>
                            </div>
                            
                            <div class="col-6 offset-md-5">
                            <input type="submit" class="btn btn-primary"/>
                            </div>
                        </form>                
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
