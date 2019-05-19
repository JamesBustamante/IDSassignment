<%-- 
    Document   : login
    Created on : 09/04/2019, 5:18:43 PM
    Author     : Ciaran
--%>

<%@page import="uts.ids.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html  >
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.9.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <!--<link rel="shortcut icon" href="assets/images/mbr-122x80.jpg" type="image/x-icon">-->
  <link type="image/x-icon" href="assets/images/movie_icon.png" rel="shortcut icon"/>
  <meta name="description" content="Web Page Creator Description">
  
  <title>Page 1</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  <%@page import="uts.ids.*" contentType="text/html" %>
  
</head>
<body>
    <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <jsp:useBean id="search" 
                     class="uts.ids.Search" scope="application">
                     </jsp:useBean>
        
      
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

    <% User user = (User) session.getAttribute("user"); %>

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
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-4">Online Movie Store</a></span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                    <a class="nav-link link text-white display-4">
                        </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-white display-4" ><span class="mbri-cash mbr-iconfont mbr-iconfont-btn"></span>Current Wallet: $70.66 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a>
                </li><li class="nav-item"><a class="nav-link link text-white display-4" ><span class="mbri-magic-stick mbr-iconfont mbr-iconfont-btn"></span>
                        Contact Us &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li><li class="nav-item dropdown"><a class="nav-link link text-white display-4" ><span class="mbrib-setting2 mbr-iconfont mbr-iconfont-btn"></span>
                        Manage Account &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li></ul>
            <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4"  href="logout.jsp"><span class="mbri-login mbr-iconfont mbr-iconfont-btn"></span>
                    
                    Logout</a></div>
        </div>
    </nav>
</section>

<section class="engine"><a >easy website builder</a></section><section class="header1 cid-rnOnPBZFRR" id="header16-a">

    

    

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-10 align-center">
                <% if (user != null) { %>
                <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">
                    Welcome <%= user.getFirstName()%></h1>
                <% } %>
                <p class="mbr-text pb-3 mbr-fonts-style display-5">Browse, Search and Pruchase Movies below</p>
                
            </div>
        </div>
    </div>

</section>

<section class="services6 cid-rnOnfBSE9i" id="services6-8">
    <!---->
    
    <!---->
    <!--Overlay-->
    
    <!--Container-->
    <div class="container">
        <div class="row">
            <!--Titles-->
            <div class="title col-12">
                <h2 class="align-left mbr-fonts-style m-0 display-1">Movie Catalogue</h2>
                
  
                                <!-- Search form -->
<form class="form-inline" action="searchAction.jsp" method="get">
  <i class="fas fa-search" aria-hidden="true"></i>
  <input class="form-control form-control-sm ml-3 w-75" type="text" name="search" placeholder="Search" aria-label="Search">
  <input class="btn btn-primary" type="submit" value="Search"> 
  <input type="hidden" value="submitted" name="submitted">
  <input type="hidden" value="main.jsp" name="page">
</form>
            </div>
            
            
            
        <jsp:include page="displayCatalogue.jsp" flush="true" />
    
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
