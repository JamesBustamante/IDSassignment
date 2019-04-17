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

                    <div class="form-group">
                        <form action="register-action.jsp" method="POST">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Name"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Password"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="DOB"/><br>
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
