<%-- 
    Document   : addMovie
    Created on : 12/05/2019, 6:34:44 PM
    Author     : james
--%>
<!--Importing a Java Source Package -->
<%@page import="uts.ids.Validate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Movie</title>
    </head>
    <body>
        <!-- Initialise Variable to store file path to movie XML database -->
        <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
        <!--Initialising the MovieApplication Java Bean -->
        <jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
            <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <!--Initialising the Validate Java Bean -->
        <jsp:useBean id="Validate" 
                     class="uts.ids.Validate" scope="application"> 
        </jsp:useBean>

        <!--Form that sends a POST request to addMovieAction.jsp so a movie can be added  -->
        <form action="addMovieAction.jsp" method="POST">
            <table cellpadding = "9">
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td> Movie Title: </td>
                        <td> <input type="text" name="movieTitle"></td>
                    </tr>
                    <tr>
                        <td> Genre: </td>
                        <td> <input type="text" name="genre"></td>
                        <td> Movie Price: </td>
                        <td> <input type="text" name="moviePrice" ></td>
                    </tr>
                    <tr>
                        <td> Movie Length: </td>
                        <td> <input type="text" name="movieLength" ></td>
                        <td> Movie Quantity: </td>
                        <td> <input type="text" name="movieQuantity"></td>
                    </tr>
                    <tr>
                        <td> Movie Release Date: </td>
                        <td> <input type="text" name="movieReleaseDate"></td>
                        <td> Movie Description: </td>
                        <td> <input type="text" name="movieDescription"></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Add Movie" class="btn btn-info btn-sm"/>
            <input type="hidden" name="updated" value="updated"/>
            <span class="error">${value}</span>
        </form>

        <%
            // Validation of the input fields required to add a movie
            // valid.setMovieAdded(t);
            if (!Validate.isIsValid()) {%>
        <p>Input is invalid or incomplete </p> 
        <% }
            if (Validate.isMovieAdded()) {%>
        <p>Movie Added </p>
        <%}
            Validate.setIsValid(true);
            Validate.setIsValid(false);
        %>
    </body>
</html>
