<%-- 
    Document   : loginAction
    Created on : 18/04/2019, 7:48:50 PM
    Author     : james
--%>

<%@page import="uts.ids.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
    </head>
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    </head>
    <body>
        <% String email = request.getParameter("email");  //gets email and password from login.jsp once entered by user
            String password = request.getParameter("password"); %>
            <% if (email.equalsIgnoreCase("robb@gmail.com") && password.equalsIgnoreCase("qwerty")) {
               User user = new User("Robb",email,password,"1999","12900926");
            session.setAttribute("user",user);
                response.sendRedirect("main.jsp");
            } else {  %>
            <div class="row">
                <div class="col-md-6 offset-3"><a href="index.jsp"><h2>Invalid Login. Click here to try again</h2></a></div>
            </div>

             <%}%>
    </body>
</html>
