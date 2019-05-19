<%-- 
    Document   : displayCatalogAdmin
    Created on : 12/05/2019, 2:30:51 PM
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
            <movieID><%= movie.getMovieID()%></movieID>
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
<c:import url = "movieTableAdmin.xsl" var = "xslt"/>
<x:transform xml = "${xmltext}" xslt = "${xslt}"></x:transform>
<%! String ErrorInput;%>
<%
    if (matches.size() == 0) {
        ErrorInput = search.getUserInput() + " ";
%>
<body>
<p style="color:brown;font-size:30px;"><br><br>Error! Movie Not Found</p>
<p style="color:brown;font-size:22px;"><br><br></p>
<p style="color:brown;font-size:30px;"><br><br>&nbsp;Parameters given: <%= ErrorInput%></p>

</body>
<% ErrorInput = ""; %>
<% search.setUserInput(""); %>
<% } %>