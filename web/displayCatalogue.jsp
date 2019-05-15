<%-- 
    Document   : displayCatalogue
    Created on : 11/05/2019, 4:17:56 PM
    Author     : james
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.Movie"%>
<%@page import="uts.ids.Movies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



    <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
<jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
    <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<jsp:useBean id="search" 
                     class="uts.ids.Search" scope="application">
                     </jsp:useBean>
        <% 
            Movies movies = catalogueApp.getMovies();
            ArrayList<Movie> matches = movies.getMovies();
            ArrayList<Movie> titleMatches = movies.getMovies();
            ArrayList<Movie> yearMatches = movies.getMovies();
            ArrayList<Movie> genreMatches = movies.getMovies();
            //matches.get(1).getMovieDescription();
            
            boolean searchHasInput = false;
            if (!search.getUserInput().equals("")) {
                searchHasInput = true;
                matches = movies.getMovieMatches(search.getUserInput());
                //matches = movies.getGenreMatches(search.getUserInput());
            }
            
            
        %>
        
        <c:set var = "xmltext"> 
    <movies> 
        <% for (Movie movie : matches) {
        %>
        <movie>
            <movieTitle><%= movie.getMovieTitle()%></movieTitle>
            <genre><%=movie.getGenre()%></genre>
            <movieReleaseDate><%=movie.getMovieReleaseDate()%></movieReleaseDate>
            <moviePrice><%=movie.getMoviePrice()%></moviePrice>
            <movieQuantity><%=movie.getMovieQuantity()%></movieQuantity>
            <picture><%=movie.getPicture()%></picture>
        </movie>
        <%}
        %>
    </movies>
</c:set>
<c:import url = "movieTable.xsl" var = "xslt"/>
<x:transform xml = "${xmltext}" xslt = "${xslt}"></x:transform>

