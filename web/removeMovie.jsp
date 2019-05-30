<%-- 
    Document   : removeMovie
    Created on : 12/05/2019, 5:05:26 PM
    Author     : james
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.Movie"%>

<%@page import="uts.ids.Movies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
        <jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
            <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>



        <%
     String id = request.getParameter("id");
     Movies movies = catalogueApp.getMovies();
     ArrayList<Movie> allMovies = movies.getMovies();
     Movie myMovieMatch = movies.getMoviebyID(id);
 movies.removeMovie(myMovieMatch);
 catalogueApp.updateXML(movies, filePath);
 response.sendRedirect("manageCatalog.jsp");

        %>
    </body>
</html>
