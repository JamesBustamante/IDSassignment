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
        <title>JSP Page</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>


        <% 
            User currentUser = (User) session.getAttribute("user");
            Users users = UserApplication.getUsers();
            ArrayList<User> allUsers = users.getList();
            User user = users.getIDUser(currentUser.getOnlineMovieStoreID());
            users.removeUser(user);
            UserApplication.updateXML(users, filePath);
            response.sendRedirect("logout.jsp");
        %>
        
       <%
    //String id = request.getParameter("id");
    //Movies movies = catalogueApp.getMovies();
    //ArrayList<Movie> allMovies = movies.getMovies();
    //Movie myMovieMatch = movies.getMoviebyID(id);
    //movies.removeMovie(myMovieMatch);
    //catalogueApp.updateXML(movies, filePath);
    //response.sendRedirect("manageCatalog.jsp");

%>
    </body>
</html>
