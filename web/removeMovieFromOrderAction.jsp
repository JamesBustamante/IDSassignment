<%-- 
    Document   : removeMovieFromOrderAction
    Created on : 19/05/2019, 11:48:56 PM
    Author     : Ciaran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.ids.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Selected Movie</title>
    </head>
    <body>
        <% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
        <jsp:useBean id="catalogueApp" class="uts.ids.MovieApplication" scope="application">
            <jsp:setProperty name="catalogueApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <jsp:useBean id="multiMovieOrder"
                     class="uts.ids.MultiMovieOrder"
                     scope="session">
        </jsp:useBean>

        <%
            String title = request.getParameter("title");          
            multiMovieOrder.movies.remove(title);
            
            response.sendRedirect("orderPage.jsp");
        %>        
    </body>
</html>
