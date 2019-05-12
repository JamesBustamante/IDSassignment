<%-- 
    Document   : addMovie
    Created on : 12/05/2019, 6:34:44 PM
    Author     : james
--%>

<%@page import="uts.ids.Validate"%>
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

<jsp:useBean id="Validate" 
                     class="uts.ids.Validate" scope="application"> 
        </jsp:useBean>

        <form action="addMovieAction.jsp" method="POST">
    <table  cellpadding = "9">
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
                <input type="submit" value="Add Movie"/>
                    <input type="hidden" name="updated" value="updated"/>
</form>
        <%
            //Validate valid = new Validate();
            //valid.setIsValid(true);
           // valid.setMovieAdded(t);
            if (!Validate.isIsValid()) {
        %> <p>Input is invalid or incomplete </p> 
        <% }
       
            %>
            
            <%
            if (Validate.isMovieAdded()) {
        %> <p>Movie Added </p> <%}
            Validate.setIsValid(true);
           Validate.setIsValid(false);
            %>
    </body>
</html>
