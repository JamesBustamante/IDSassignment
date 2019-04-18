<%-- 
    Document   : register-action
    Created on : 09/04/2019, 5:20:02 PM
    Author     : Ciaran
--%>

<%@page import="uts.ids.User"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>        
    </head>
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        
        <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String password = request.getParameter("password");
        String tos = request.getParameter("tos");
        int key = (new Random()).nextInt(999999);
        String userID = "" + key;
        %>
        
        <% if(tos != null) { 
            User user = new User(name,email,password,dob,userID);
            session.setAttribute("user",user);
        %>
                    

        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-3"><h1>Welcome to the movie store</h1></div>
                <div class="col-md-6 offset-3"><h1 style="text-align:center;"><%= name %>!</h1></div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-3"><a href="main.jsp"><h2>Click here to go to the main page</h2></a></div>
            </div>
        </div>
                <% } else { %>
                <div class="container">
            <div class="row">
                <div class="col-md-6 offset-3"><h1>You did not accept the terms of service</h1></div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-3"><a href="register.jsp"><h2>Click here to go to register again</h2></a></div>
            </div>
        </div>
                <% } %>
    </body>
</html>
