<%-- 
    Document   : logout
    Created on : 18/04/2019, 7:41:51 PM
    Author     : james
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                 <% session.invalidate(); %>
                 <% response.sendRedirect("index.jsp"); %>
    </body>
</html>
