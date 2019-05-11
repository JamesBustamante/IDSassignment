<%-- 
    Document   : displayCatalogue
    Created on : 11/05/2019, 4:17:56 PM
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
    <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
<jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
    <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
    <body>
        <% 
            Movies movies = catalogueApp.getMovies();
            ArrayList<Movie> matches = movies.getMovies();
            matches.get(1).getMovieDescription();
        %>
        
        <% for (Movie movie : matches) {
        %>
        <movie>
            <title><%= movie.getMovieTitle()%></title>
        </movie>
        <%}
        %>
    </body>
</html>
