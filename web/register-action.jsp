<%-- 
    Document   : register-action
    Created on : 09/04/2019, 5:20:02 PM
    Author     : Ciaran
--%>

<%@page import="uts.ids.*"%>
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
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String mobileNumber = request.getParameter("mobileNumber");
        String addressResidential = request.getParameter("addressResidential");
        String addressSuburb = request.getParameter("addressSuburb");
        String addressPostcode = request.getParameter("addressPostcode");
        String addressState = request.getParameter("addressState");
        String tos = request.getParameter("tos");
        int key = (new Random()).nextInt(999999);
        String userID = "" + key;
        
       User user = new User(userID, "false", email, password, firstName, lastName,  gender, mobileNumber, addressResidential, addressSuburb, addressPostcode, addressState, "active", "300.00"); //assigns a new user
                session.setAttribute("user", user);
                session.setAttribute("tos", tos);
                response.sendRedirect("welcomePage.jsp");
        %>
                   
    </body>
</html>
