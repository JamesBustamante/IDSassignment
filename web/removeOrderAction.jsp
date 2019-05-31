<%-- 
    Document   : removeOrderAction
    Created on : 31/05/2019, 9:44:28 PM
    Author     : Ciaran
--%>

<%@page import="java.util.*"%>
<%@page import="uts.ids.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>remove order</title>
        <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css"/>
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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>


        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <% String filePath1 = application.getRealPath("WEB-INF/orders.xml");%>
        <jsp:useBean id="orderApp" class="uts.ids.OrderApplication" scope="application">
            <jsp:setProperty name="OrderApplication" property="filePath" value="<%=filePath1%>"/>
        </jsp:useBean>        

        <jsp:useBean id="multiMovieOrder"
                     class="uts.ids.MultiMovieOrder"
                     scope="session">
        </jsp:useBean> 


        <% 
            String orderID = request.getParameter("orderID");
            Orders orders = orderApp.getOrders();
            Order order = orders.getOrder(orderID);
            order.setOrderStatus("Cancelled");
            
            orderApp.updateXML(orders, filePath1);
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
            
            <% User user = (User)session.getAttribute("user"); %>

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
                        <li class="nav-item">
                            <% if (multiMovieOrder.movies.isEmpty()) { %>
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

        <section once="content" class="services6 cid-rnOnfBSE9i" id="services6-8">
            <div class="container">
                <div class="row justify-content-md-center">
                    <h1>Order Cancelled</h1>
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
    </body>
</html>
