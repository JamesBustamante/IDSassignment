<%-- 
    Document   : welcomePage
    Created on : 10/05/2019, 12:44:33 PM
    Author     : james
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
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <%!  boolean unique = false;%>

        <% Users users = UserApplication.getUsers();
            User user = (User) session.getAttribute("user");
            String tos = (String) session.getAttribute("tos");

            if (user == null) {
                unique = false;
            } else {
                users.addUser(user);
                UserApplication.updateXML(UserApplication.getUsers(), filePath);
                UserApplication.saveUsers();
                unique = true; //Account is valid
            }
            if (tos != null /*&& users.getUser(user.getEmail()) == false*/) {
        %>

        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-3"><h1>Welcome to the movie store</h1></div>
                <div class="col-md-6 offset-3"><h1 style="text-align:center;"><%= user.getFirstName()%></h1></div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-3"><a href="main.jsp"><h2>Click here to go to the main page</h2></a></div>
            </div>
        </div>
        <%} else { %>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-3"><h1>You did not accept the terms of service OR email is already taken</h1></div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-3"><a href="register.jsp"><h2>Click here to go to register again</h2></a></div>
            </div>
        </div>
        <% }%>
    </body>
</html>
