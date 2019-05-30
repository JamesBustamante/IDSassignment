<%-- 
    Document   : userLogs
    Created on : 21/05/2019, 12:51:11 PM
    Author     : edwar
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.User"%>
<%@page import="uts.ids.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manage Account</title>
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
<body>
    <jsp:useBean id="multiMovieOrder"
                 class="uts.ids.MultiMovieOrder"
                 scope="session">
    </jsp:useBean> 
    <%  User user = (User) session.getAttribute("user");%>

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

    <section>
        <div class="container">
            <div class="col-6 offset-md-3">
                <div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <h1 class="display-3"><b>Access Logs</b></h1>
                </div>




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


                    * {
                        box-sizing: border-box;
                    }

                    #myInput {
                        background-image: url('searchicon.jpg');
                        background-position: 10px 10px;
                        background-repeat: no-repeat;
                        width: 150%;
                        font-size: 16px;
                        padding: 12px 20px 12px 40px;
                        border: 1px solid #ddd;
                        margin-bottom: 12px;
                    }

                    #myTable {
                        border-collapse: collapse;
                        width: 150%;
                        border: 1px solid #ddd;
                        font-size: 18px;
                    }

                    #myTable th, #myTable td {
                        text-align: left;
                        padding: 12px;
                    }

                    #myTable tr {
                        border-bottom: 1px solid #ddd;
                    }

                    #myTable tr.header, #myTable tr:hover {
                        background-color: #f1f1f1;
                    }
                </style>
                </head>
                <body>

                    <div class="offset-1">
                        <h5>View Log History Below</h5>
                    </div>

                    <br>

                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for dates.." title="Type in a date">

                    <table id="myTable">
                        <tr class="header">
                            <th>accesslogID</th>
                            <th>Login Date</th> 
                            <th>Login Time</th>
                            <th>Logout Date</th>
                            <th>Logout Time</th>
                            <th>Delete<th>
                        </tr>
                        <tr>
                            <td>000001</td>
                            <td>18/05/2019</td> 
                            <td>15:39:12</td>
                            <td>18/05/2019</td>
                            <td>16:32:14</td>
                            <td><button class="editbtn">x</button></td>
                        </tr>
                        <tr>
                            <td>000002</td>
                            <td>18/05/2019</td> 
                            <td>00:15:43</td>
                            <td>18/05/2019</td>
                            <td>00:25:16</td>
                            <td><button class="editbtn">x</button></td>
                        </tr>
                        <tr>
                            <td>000003</td>
                            <td>19/05/2019</td> 
                            <td>22:26:33</td>
                            <td>19/05/2019</td>
                            <td>23:42:54</td>
                            <td><button class="editbtn">x</button></td>
                        </tr>
                        <tr>
                            <td>000003</td>
                            <td>19/05/2019</td> 
                            <td>23:15:15</td>
                            <td>19/05/2019</td>
                            <td>23:46:34</td>
                            <td><button class="editbtn">x</button></td>
                        </tr>
                        <tr>
                            <td>000003</td>
                            <td>20/05/2019</td> 
                            <td>05:13:33</td>
                            <td>20/05/2019</td>
                            <td>08:42:54</td>
                            <td><button class="editbtn">x</button></td>
                        </tr>
                    </table>

                    <script>
                        function myFunction() {
                            var input, filter, table, tr, td, i, txtValue;
                            input = document.getElementById("myInput");
                            filter = input.value.toUpperCase();
                            table = document.getElementById("myTable");
                            tr = table.getElementsByTagName("tr");
                            for (i = 0; i < tr.length; i++) {
                                td = tr[i].getElementsByTagName("td")[1];
                                if (td) {
                                    txtValue = td.textContent || td.innerText;
                                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                        tr[i].style.display = "";
                                    } else {
                                        tr[i].style.display = "none";
                                    }
                                }
                            }
                        }
                    </script>




                    <br><br><br>

                    <jsp:include page="displayAccessLogs.jsp" flush="true" />

                    <br><br><br>


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
