<%-- 
    Document   : displayOrder
    Created on : 19/05/2019, 9:50:35 PM
    Author     : Ciaran
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page import="java.util.*"%>
<%@page import="uts.ids.*"%>


<%String filePath = application.getRealPath("WEB-INF/movies.xml");%>
<jsp:useBean id="movieApp" class="uts.ids.MovieApplication" scope="application">
    <jsp:setProperty name="movieApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<jsp:useBean id="multiMovieOrder"
             class="uts.ids.MultiMovieOrder" scope="session">
</jsp:useBean>


<%
    String title = request.getParameter("title");

    Movies movies = movieApp.getMovies();
    ArrayList<Movie> all = movies.getMovies();
    ArrayList<Movie> match = new ArrayList();
    
    if(multiMovieOrder.movies.contains(title)){
        for(String movie : multiMovieOrder.movies){
            for(Movie m : all){
                if(m.getMovieTitle().equalsIgnoreCase(movie)){
                    match.add(m);
                }          
            }
        }        
    }else {
        multiMovieOrder.movies.add(title);    
        for(String movie : multiMovieOrder.movies){
            for(Movie m : all){
                if(m.getMovieTitle().equalsIgnoreCase(movie) && multiMovieOrder.movies.contains(movie)){
                    match.add(m);
                }          
            }
        }
        out.println(match.size());
    }
    

    if(multiMovieOrder.movies.size() == 1 && multiMovieOrder.movies.contains(null)){
        multiMovieOrder.movies.clear();
    }
%>

<c:set var = "xmltext">
    <movies>
        <% for(Movie movie : match) {%>
        <movie>
            <movieTitle><%= movie.getMovieTitle()%></movieTitle>
            <genre><%=movie.getGenre()%></genre>
            <movieReleaseDate><%=movie.getMovieReleaseDate()%></movieReleaseDate>
            <moviePrice><%=movie.getMoviePrice()%></moviePrice>
            <movieQuantity><%=movie.getMovieQuantity()%></movieQuantity>
            <picture><%=movie.getPicture()%></picture>                
        </movie>
        <%}%>
    </movies>
</c:set>
<c:import url = "selectedMovie.xsl" var = "xslt"/>
<x:transform xml = "${xmltext}" xslt = "${xslt}"></x:transform>

