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
        <link rel="stylesheet" href="Stylesheets/bootstrap-4.3.1-dist/css/bootstrap.css"/>
        <link rel="stylesheet" href="Stylesheets/bootstrap-4.3.1-dist/css/bootstrap.min.css"/>
    
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        
        <section>
            <div class="container">
                <div class="col-md-10 offset-md-3 text-right">
                    <a href="register.jsp">Register</a>
                </div>
                <div class="col-md-6 offset-md-3 text-center">
                    <h1 class="display-4"><b>Online Movie System</b></h1>
                    <div class="info-form">
                        <form action="main.jsp" method="GET" class="form-inlin justify-content-center">
                            <div class="form-group">
                                <!--<label>Email</label>-->
                                <input type="email" class="form-control" placeholder="Enter Email"/><br/>
                            </div>
                            <div class="form-group">
                                <!--<label>Password</label>-->
                                <input type="password" class="form-control" placeholder="Password"/>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>            
        </section>

<!--        <section id="cover">
            <div id="cover-caption">
                <div id="container" class="container">
                    <div class="row align-items-end">
                        <div class="col-sm-6 offset-sm-3 text-center">
                            <h1 class="display-4"><b>Online Movie Store System</b></h1>
                            <div class="info-form">
                                <form action="login.jsp" class="form-inlin justify-content-center">
                                    <div class="form-group">
                                        <label class="sr-only">Email</label>
                                        <input type="text" class="form-control" placeholder="john.doe@example.com">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only">Password</label>
                                        <input type="password" class="form-control" placeholder="password123">
                                    </div>
                                    <button type="submit" class="btn btn-success ">Login</button>
                                </form>
                            </div>
                            <br>

                            <a href="#nav-main" class="btn btn-outline-secondary btn-sm" role="button">
                                Register
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->

        
    </body>
</html>
