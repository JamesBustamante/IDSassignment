<%-- 
    Document   : index
    Created on : 02/04/2019, 6:23:27 PM
    Author     : Ciaran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login Page</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="Stylesheets/bootstrap-4.3.1-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Stylesheets/bootstrap-4.3.1-dist/css/bootstrap.min.css"/>
    
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>

        <section>
            <div class="container">
                <div class="col-md-10 offset-md-3 text-right mt-2">
                    <a class="btn btn-light" href="register.jsp">Register</a>
                </div>
                <div class="col-md-6 offset-md-3 text-center">
                    <h1 class="display-4"><b>Online Movie System</b></h1>
                    <div class="info-form">
                        <form action="loginAction.jsp" method="POST" class="form-inlin justify-content-center">
                            <div class="form-group">
                                <!--<label>Email</label>-->
                                <input type="email" class="form-control" placeholder="Enter Email" name="email"/><br/>
                            </div>
                            <div class="form-group">
                                <!--<label>Password</label>-->
                                <input type="password" class="form-control" placeholder="Password" name="password"/>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                </div>
            </div>            
        </section>
        <br/><br/>
        <section class="mt-5">
        <div class="container-fluid">
            <div class="row offset-1">
                <div class="col-md-6">
                    <h3 class="float-md-right">Just want to browse?</h3>
                </div>
                <div class="col-md-6 float-md-left">
                    <a class="btn btn-primary" href="main.jsp">Click Here!</a>
                </div>
            </div>
        </div>
        </section>       
    </body>
</html>
