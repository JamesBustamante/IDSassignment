<%-- 
    Document   : removeMovie
    Created on : 12/05/2019, 5:05:26 PM
    Author     : james
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.User"%>

<%@page import="uts.ids.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove User</title>
    </head>
    <body>
        // Initialising Java Bean
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>


        <% 
            // Get the current user in the session
            User currentUser = (User) session.getAttribute("user");
            // Get all the users in the application
            Users users = UserApplication.getUsers();
            // Make an array of users
            ArrayList<User> allUsers = users.getList();
            // Get select the current user by ID
            User user = users.getIDUser(currentUser.getOnlineMovieStoreID());
            // Remove User
            users.removeUser(user);
            // Update XML
            UserApplication.updateXML(users, filePath);
            // Redirect to Logout.jsp as a user cannot be logged in if he deletes his account
            response.sendRedirect("logout.jsp");
        %>

    </body>
</html>
