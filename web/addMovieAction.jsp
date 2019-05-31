<%-- 
    Document   : addMovieAction
    Created on : 12/05/2019, 6:48:28 PM
    Author     : james
--%>
<!-- -->
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="uts.ids.Movie"%>
<%@page import="uts.ids.Movies"%>
<%@page import="uts.ids.Movies"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Movie Action</title>
    </head>
    <body>

        <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
        <jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
            <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <jsp:useBean id="Validate" 
                     class="uts.ids.Validate" scope="application"> 
        </jsp:useBean>

        <%
            Map<String, String> errors = new HashMap<String, String>();
            Validate.setIsValid(true);
            Validate.setMovieAdded(false);
            int key = (new Random()).nextInt(999);
            String movieID = "" + key;
            String movieTitle = request.getParameter("movieTitle");
            String genre = request.getParameter("genre");
            String moviePrice = request.getParameter("moviePrice");
            String movieLength = request.getParameter("movieLength");
            String movieQuantity = request.getParameter("movieQuantity");
            String movieReleaseDate = request.getParameter("movieReleaseDate");
            String movieDescription = request.getParameter("movieDescription");
            String invalid = "Input is invalid or incomplete";
            Movies movies = catalogueApp.getMovies();
            if (movies.getMoviebyID(movieID) != null || movieTitle.isEmpty() || moviePrice.isEmpty() || movieQuantity.isEmpty() || !moviePrice.matches("[-+]?\\d*\\.?\\d+") || !movieQuantity.matches("-?\\d+")) {
                Validate.setIsValid(false);
                errors.put("origin", "testtt");
                request.setAttribute("errors", errors);
                //request.getRequestDispatcher("addMoviePage.jsp").forward(request, response);
                //requestDispatcher.forward(request, response);
                response.sendRedirect("addMoviePage.jsp");

            } else {
                Movie movie = new Movie(movieID, movieTitle, genre, moviePrice, movieLength, movieQuantity, movieReleaseDate, movieDescription, "1", "1", "pictures/title.png");
                movies.addMovie(movie);
                catalogueApp.updateXML(movies, filePath);
                Validate.setMovieAdded(true);
                response.sendRedirect("addMoviePage.jsp");
            }
        %>
    </body>
</html>
