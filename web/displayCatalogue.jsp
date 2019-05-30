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
</jsp:useBean>  <!-- used for the transformation and manipulation of movie.xml  -->

<jsp:useBean id="search" 
             class="uts.ids.Search" scope="application">
</jsp:useBean>

<jsp:useBean id="multiMovieOrder" 
             class="uts.ids.MultiMovieOrder" scope="session">
</jsp:useBean>


<% 
    Movies movies = catalogueApp.getMovies();
    ArrayList<Movie> matches = movies.getMovies();
            
    //Checks for movie matches
    boolean searchHasInput = false;
    if (!search.getUserInput().equals("")) {
        searchHasInput = true;
        matches = movies.getMovieMatches(search.getUserInput());
    }
            
    //THIS WILL BE USED TO REMOVE MOVIES FROM THE LIST IF IN AN ORDER.
            
//            ArrayList<Movie> moviesSelected = new ArrayList<Movie>();
//            for (String movie : multiMovieOrder.movies){
//                for(Movie m : matches){
//                    if(m.getMovieTitle().equals(movie)){
//                        moviesSelected.add(m);
//                    }
//                }
//            }
            
//            //Removes movies from list if it already exits in an order.
//            matches.removeAll(moviesSelected);
            
%>
<%--  XML transformation of data that is displayed through XSLT --%>
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

<%! String ErrorInput; //Displays error message%>
<%
    if (matches.size() == 0) { //checks if no matches are found from search or default
        ErrorInput = search.getUserInput() + " "; //set error message
%>
<body>
    <p style="color:brown;font-size:30px;"><br><br>Error! Movie Not Found</p>
    <p style="color:brown;font-size:22px;"><br><br></p>
    <p style="color:brown;font-size:30px;"><br><br>&nbsp;Parameters given: <%= ErrorInput%></p>

</body>
<% ErrorInput = ""; %>
<% search.setUserInput(""); //set empty for next input from user %>
<% } %>
