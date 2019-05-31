<%-- 
    Document   : displayHistory
    Created on : 31/05/2019, 1:34:17 PM
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

<%String filePath1 = application.getRealPath("WEB-INF/orders.xml");%>
<jsp:useBean id="orderApp" class="uts.ids.OrderApplication" scope="application">
    <jsp:setProperty name="orderApp" property="filePath" value="<%=filePath1%>"/>
</jsp:useBean>

<%String filePath2 = application.getRealPath("WEB-INF/users.xml");%>
<jsp:useBean id="userApp" class="uts.ids.UserApplication" scope="application">
    <jsp:setProperty name="userApp" property="filePath" value="<%=filePath2%>"/>
</jsp:useBean>

<jsp:useBean id="multiMovieOrder"
             class="uts.ids.MultiMovieOrder" scope="session">
</jsp:useBean>


<%
    User user = userApp.getUsers().getIDUser(request.getParameter("id"));
    String ID = user.getOnlineMovieStoreID();
    
    
    Orders orders = orderApp.getOrders();
    
    Orders match = new Orders();
    
    for(Order order : orders.getOrders()){
        if(order.matchID(ID)){
            match.addOrder(order);
        }
    }
    
//    Movies movies = movieApp.getMovies();
//    ArrayList<Movie> all = movies.getMovies();
//    ArrayList<Movie> match = new ArrayList();
    
//    if(multiMovieOrder.movies.contains(title)){
//        for(String movie : multiMovieOrder.movies){
//            for(Movie m : all){
//                if(m.getMovieTitle().equalsIgnoreCase(movie)){
//                    match.add(m);
//                }          
//            }
//        }        
//    }else {
//        multiMovieOrder.movies.add(title);    
//        for(String movie : multiMovieOrder.movies){
//            for(Movie m : all){
//                if(m.getMovieTitle().equalsIgnoreCase(movie) && multiMovieOrder.movies.contains(movie)){
//                    match.add(m);
//                }          
//            }
//        }
//        out.println(match.size());
//    }
//    
//
//    if(multiMovieOrder.movies.size() == 1 && multiMovieOrder.movies.contains(null)){
//        multiMovieOrder.movies.clear();
//    }
%>

<c:set var = "xmltext">
    <orders>
        <% for(Order order : match.getOrders()) {%>
        <order>
            <orderID><%= order.getOrderID()%></orderID>
            <orderStatus><%=order.getOrderStatus()%></orderStatus>
            <onlineMovieStoreID><%=order.getID()%></onlineMovieStoreID>
        </order>
        <%}%>
    </orders>
</c:set>
<c:import url = "userHistory.xsl" var = "xslt"/>
<x:transform xml = "${xmltext}" xslt = "${xslt}"></x:transform>

