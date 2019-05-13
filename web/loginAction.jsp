<%-- 
    Document   : loginAction
    Created on : 18/04/2019, 7:48:50 PM
    Author     : james
--%>

<%@page import="uts.ids.Users"%>
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
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <%
            String email = request.getParameter("email");  //gets email and password from login.jsp once entered by user
            String password = request.getParameter("password"); 
             Users users = UserApplication.getUsers();
            User loginUser = users.login(email, password);
            if (loginUser != null) {
                session.setAttribute("user", loginUser);
                if  (loginUser.getIsStaff().equalsIgnoreCase("false")) {
        %>
         <p>Login successful. Click <a href="main.jsp">here</a> to enter the main page.</p>
         <%}  else {%>
         <p>Login successful. Click <a href="mainstaff.jsp">here</a> to enter staff page.</p> <% } %>
         <% } else {
                    session.setAttribute("Error", "NULL"); %>
           <p>Login incorrect. Click <a href="index.jsp">here</a> to try again.</p>         
            <% }%>
           
    </body>
</html>
