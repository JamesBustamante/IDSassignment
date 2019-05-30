<%-- 
    Document   : purchaseOrder
    Created on : 28/05/2019, 2:11:48 PM
    Author     : Ciaran
--%>

<%@page import="uts.ids.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v4.9.7, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <meta name="description" content="Web Page Creator Description">
        
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
    </head>
    <body style="background-color: lightblue">
        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
            <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
                <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
            </jsp:useBean>
            
        <% String filePath1 = application.getRealPath("WEB-INF/orders.xml");%>
            <jsp:useBean id="orderApplication" class="uts.ids.OrderApplication" scope="application">
                <jsp:setProperty name="OrderApplication" property="filePath" value="<%=filePath1%>"/>
            </jsp:useBean>   

        <% String filePath2 = application.getRealPath("WEB-INF/movies.xml");%>
            <jsp:useBean id="movieApplication" class="uts.ids.MovieApplication" scope="application">
                <jsp:setProperty name="movieApplication" property="filePath" value="<%=filePath2%>"/>
            </jsp:useBean>             
            
        <jsp:useBean id="multiMovieOrder"
                     class="uts.ids.MultiMovieOrder"
                     scope="session">
        </jsp:useBean>
        
        <%
            User user = (User) session.getAttribute("user"); 
            
            //List of movie titles from the user's order
            ArrayList<String> titles = new ArrayList<String>();
            titles  = multiMovieOrder.movies;
            
            //List of all the movies in the system
            Movies movies = movieApplication.getMovies();
            ArrayList<Movie> all = movies.getMovies();
            
            Orders orders = orderApplication.getOrders();
            
            //The List that will hold the converted movie titles into movie objects
            ArrayList<Movie> match = new ArrayList<Movie>();
            
            //Checks and compares each movie against the movie title in the order, and if it matches add to the list
            for(Movie movie : all){
                for(String t : titles){
                    if(movie.getMovieTitle().equals(t)){
                        match.add(movie);
                    }
                }
            }
            
            Random random = new Random();
            int x = random.nextInt(900) + 121;
            String id = "" + x;
            Order order = new Order(id, match, user.getOnlineMovieStoreID(), user.getEmail(), "Submitted");
            
//            orders.addOrder(order);
//            orderApplication.updateXML(orders, filePath1);
            
            
        %>
            
    <style>
        body {
          background-color: linen;
        }

        .logincontent {
          display: block;
          width: 150px;
          margin: 0 auto;
        }

        h1 {
          color: maroon;
          margin-left: 40px;
        } 
    </style>
    <section class="menu cid-rnOmffV0YR" once="menu" id="menu1-5">

    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    
                         <img src="assets/images/mbr-122x80.jpg" title="" style="height: 3.8rem;">
                    
                </span>
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4" href="main.jsp">Online Movie Store</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                <li class="nav-item">
                    <a class="nav-link link text-white display-4"></a>
                </li>
<!--                <li class="nav-item">
                    <a class="nav-link link text-white display-4" ><span class="mbri-cash mbr-iconfont mbr-iconfont-btn"></span>Current Wallet: $70.66 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                </li>-->
                <li class="nav-item">
                    <% if(multiMovieOrder.movies.isEmpty()) { %>
                        <a class="nav-link link text-white display-4" href="orderPage.jsp" ><span class="mbri-shopping-cart mbr-iconfont mbr-iconfont-btn"></span> My Order &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                    <%} else {%>
                        <a class="nav-link link text-white display-4" href="orderPage.jsp" ><span class="mbri-cart-full mbr-iconfont mbr-iconfont-btn"></span> My Order &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>                        
                    <%}%>
                </li>
                <li class="nav-item">
                    <% if (null != user) {%>
                        <a class="nav-link link text-white display-4" href="manageAccount.jsp"><span class="mbrib-setting2 mbr-iconfont mbr-iconfont-btn"></span>Manage Account &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                    <%}%>
                </li>
            </ul>
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4"  href="logout.jsp"><span class="mbri-login mbr-iconfont mbr-iconfont-btn"></span>
                    
                    Logout</a></div>
        </div>
    </nav>
    </section>

    <section class="engine"><a >easy website builder</a></section>
    <section class="header1 cid-rnOnPBZFRR" id="header16-a">

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-10 align-center">
                <p class="mbr-text pb-3 mbr-fonts-style display-5">Browse, Search and Purchase Movies below</p>
            </div>
        </div>
    </div>

    </section>

    <section class="services6 cid-rnOnfBSE9i" id="services6-8">
    <div class="container">
        <div class="row">
            <h1>Order has been confirmed!</h1>
        </div>
        <div class="row">
            <p><%=order.getOrderID()%></p>           
            <p><%=order.getID()%></p>
            <p><%=order.getEmail()%></p>  
            <p><%=order.getPurchases()%></p> 
            <p><%=order.getOrderStatus()%></p>            
        </div>
        <div>
            <p><%=filePath1%></p>
            <p><%=orderApplication.getFilePath()%></p>
            <p><%=orderApplication.getOrders()%></p>  
            <p><%=orders%></p>
        </div>
    </div>
    </section>

    <section once="footers" class="cid-rnOnTVUo9Q" id="footer6-b">

    

    

        <div class="container">
            <div class="media-container-row align-center mbr-white">
                <div class="col-12">
                    <p class="mbr-text mb-0 mbr-fonts-style display-7">
                        © Copyright 2019 Created By Ciaran, Ed, James & Max
                    </p>
                </div>
            </div>
        </div>
    </section>


    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/dropdown/js/script.min.js"></script>
    <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
    <script src="assets/theme/js/script.js"></script>
  
    </body>
</html>
