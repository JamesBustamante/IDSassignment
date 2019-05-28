<%-- 
    Document   : register-action
    Created on : 09/04/2019, 5:20:02 PM
    Author     : Ciaran
--%>

<%@page import="java.awt.Checkbox"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="uts.ids.*"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration validation</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>        
    </head>
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        
        <%
        // Variables to get all the input fields from registration
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
        // Random Number to generate UserID
        int key = (new Random()).nextInt(999999);
        String userID = "" + key;
        // Email Validation - Any number of character can be before and after the @ symbol
        // Password Validation
        // At least 8 characters, must contain 1 uppercase letter, 1 lowercase letter and 1 number
        // Other validation - All other input fields cannot be null and cannot be empty
        // Dangling meta character regex bug
        // Bad Password regex ((?=.*[a-z])(?=.*d)(?=.*[@#$%])(?=.*[A-Z]).{6,16})
        if ((email.matches("^(.+)@(.+)$")) 
                && password.matches("^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$")
                && firstName != null 
                && !firstName.isEmpty() 
                && lastName != null 
                && !lastName.isEmpty()
                && mobileNumber != null 
                && !mobileNumber.isEmpty()
                && addressResidential != null 
                && !addressResidential.isEmpty()
                && addressSuburb != null 
                && !addressSuburb.isEmpty()
                && addressPostcode != null 
                && !addressPostcode.isEmpty()
                && addressState != null 
                && !addressState.isEmpty()) {
            User user = new User(userID, "false", email, password, firstName, lastName,  gender, mobileNumber, addressResidential, addressSuburb, addressPostcode, addressState, "active", "300.00"); //assigns a new user
                    session.setAttribute("user", user);
                    session.setAttribute("tos", tos);
                    response.sendRedirect("welcomePage.jsp");
        }
        
        else { %>
           <p> Registration unsuccessful. Click <a href="register.jsp">here</a> to try again. </p>
           <p> Please make sure you haven't left any empty fields, have a legitimate email address and your password must have: </p>
           <p> At least 8 characters, must contain 1 uppercase letter, 1 lowercase letter and 1 number </p>
           
       <% } %>
        
                   
    </body>
</html>
