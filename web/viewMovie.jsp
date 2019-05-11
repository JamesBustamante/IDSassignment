<%-- 
    Document   : viewMovie
    Created on : 11/05/2019, 7:35:21 PM
    Author     : james
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.Movie"%>
<%@page import="uts.ids.Movies"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

    <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
<jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
    <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String id = request.getParameter("id");
    Movies movies = catalogueApp.getMovies();
    ArrayList<Movie> allMovies = movies.getMovies();
    ArrayList<Movie> match = new ArrayList<Movie>();
    for (Movie movie : allMovies) {
        if (movie.getMovieTitle().equalsIgnoreCase(id)) {
            match.add(movie);
                    break;
        }
    }
   
%>

    <c:set var = "xmltext"> 
    <movies> 
        <% for (Movie movie : match) {
        %>
        <movie>
            <movieTitle><%= movie.getMovieTitle()%></movieTitle>
            <genre><%=movie.getGenre()%></genre>
            <movieReleaseDate><%=movie.getMovieReleaseDate()%></movieReleaseDate>
            <moviePrice><%=movie.getMoviePrice()%></moviePrice>
            <movieQuantity><%=movie.getMovieQuantity()%></movieQuantity>
            <picture><%=movie.getPicture()%></picture>
            <movieDescription><%=movie.getPicture()%></movieDescription>
        </movie>
        <%}
        %>
    </movies>
</c:set>
<c:import url = "movie.xsl" var = "xslt"/>
<x:transform xml = "${xmltext}" xslt = "${xslt}"></x:transform>