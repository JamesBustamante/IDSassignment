<%-- 
    Document   : searchAction
    Created on : 14/05/2019, 11:59:41 PM
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
                <jsp:useBean id="search" 
                     class="uts.ids.Search" scope="application">
                     </jsp:useBean>
        
        <% 
            search.emptySearch();
            search.setUserInput("");
            String userInput = request.getParameter("search");
            boolean emptyUserInput = false;
            if (userInput.trim().isEmpty()) {
                emptyUserInput = true;
            }
            
            if (userInput != null){
                search.setUserInput(userInput);
            }
            response.sendRedirect("main.jsp");
        
        %>
    </body>
</html>
