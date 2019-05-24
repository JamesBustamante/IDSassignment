<%-- 
    Document   : editMovie
    Created on : 12/05/2019, 2:34:25 PM
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
        </jsp:useBean> <!-- used for the transformation and manipulation of movie.xml  -->

        <jsp:useBean id="Validate" 
                     class="uts.ids.Validate" scope="application"> <!-- calculate searches and manages the input textbox -->
        </jsp:useBean>


        <%
            //get the matching movie
            String id = request.getParameter("id");
            Movies movies = catalogueApp.getMovies();
            ArrayList<Movie> allMovies = movies.getMovies();
            Movie myMovieMatch = movies.getMoviebyID(id);
            Validate.setIsValid(false);
        %>
        <% //This handles the details that are updated
            if (request.getParameter("updated") != null) {
                    //get parameters
                myMovieMatch.setMovieTitle(request.getParameter("movieTitle"));
                myMovieMatch.setGenre(request.getParameter("genre"));
                myMovieMatch.setMoviePrice(request.getParameter("moviePrice"));
                myMovieMatch.setMovieLength(request.getParameter("movieLength"));
                myMovieMatch.setMovieQuantity(request.getParameter("movieQuantity"));
                myMovieMatch.setMovieReleaseDate(request.getParameter("movieReleaseDate"));
                myMovieMatch.setMovieDescription(request.getParameter("movieDescription"));
                movies = catalogueApp.getMovies();

                movies.getMoviebyID(myMovieMatch.getMovieID()).setMovieTitle(request.getParameter("movieTitle"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setGenre(request.getParameter("genre"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setMoviePrice(request.getParameter("moviePrice"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setMovieLength(request.getParameter("movieLength"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setMovieQuantity(request.getParameter("movieQuantity"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setMovieReleaseDate(request.getParameter("movieReleaseDate"));
                movies.getMoviebyID(myMovieMatch.getMovieID()).setMovieDescription(request.getParameter("movieDescription"));
                    //save update
                catalogueApp.updateXML(movies, filePath);
                Validate.setIsValid(true);

        %><%                    }
        %>         

        <form action="editMoviePage.jsp" method="POST">
            <table  cellpadding = "9">
                <tbody>
                    <tr>
                        <td> Movie ID:</td>
                        <td><%= myMovieMatch.getMovieID()%></td>
                        <td> Movie Title: </td>
                        <td> <input type="text" name="movieTitle" value="<%= myMovieMatch.getMovieTitle()%>"></td>
                    </tr>
                    <tr>
                        <td> Genre: </td>
                        <td> <input type="text" name="genre" value="<%= myMovieMatch.getGenre()%>"></td>
                        <td> Movie Price: </td>
                        <td> <input type="text" name="moviePrice" value="<%= myMovieMatch.getMoviePrice()%>"></td>
                    </tr>
                    <tr>
                        <td> Movie Length: </td>
                        <td> <input type="text" name="movieLength" value="<%= myMovieMatch.getMovieLength()%>"></td>
                        <td> Movie Quantity: </td>
                        <td> <input type="text" name="movieQuantity" value="<%= myMovieMatch.getMovieQuantity()%>"></td>
                    </tr>
                    <tr>
                        <td> Movie Release Date: </td>
                        <td> <input type="text" name="movieReleaseDate" value="<%= myMovieMatch.getMovieReleaseDate()%>"></td>
                        <td> Movie Description: </td>
                        <td> <input type="text" name="movieDescription" value="<%= myMovieMatch.getMovieDescription()%>"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Save Changes" class="btn btn-info btn-sm"/>
            <input type="hidden" name="updated" value="updated"/>
            <input type="hidden" name="id" value="<%= myMovieMatch.getMovieID()%>"/>
        </form>

        <form action="removeMovie.jsp">
            <input type="hidden" name="id" value="<%= myMovieMatch.getMovieID()%>"/>
            <input type="submit" name="cancel" value="X Remove Movie X" class="btn btn-secondary btn-sm"/>
        </form>

        <%
            // valid.setMovieAdded(t);
            if (Validate.isIsValid()) {
        %> <p>Changes Saved</p> 
        <% }

        %>
    </body>
</html>
