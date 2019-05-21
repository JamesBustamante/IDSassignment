<%-- 
    Document   : register
    Created on : 09/04/2019, 5:13:15 PM
    Author     : Ciaran
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uts.ids.User"%>
<%@page import="uts.ids.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
    <body style="background-color: lightblue">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/popper.min.js"></script>
        <script src="Stylesheets/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        


        <% String filePath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="UserApplication" class="uts.ids.UserApplication" scope="application">
            <jsp:setProperty name="UserApplication" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>

        <%  User user = (User) session.getAttribute("user");
            String id = request.getParameter("id");
            Users users = UserApplication.getUsers();

            if (request.getParameter("updated") != null) {
                user.setFirstName(request.getParameter("firstName"));
                user.setLastName(request.getParameter("lastName"));
                user.setGender(request.getParameter("gender"));
                user.setEmail(request.getParameter("email"));
                user.setPassword(request.getParameter("password"));
                user.setMobileNumber(request.getParameter("mobileNumber"));
                user.setAddressResidential(request.getParameter("addressResidential"));
                user.setAddressSuburb(request.getParameter("addressSuburb"));
                user.setAddressPostcode(request.getParameter("addressPostcode"));
                user.setAddressState(request.getParameter("addressState"));
                users = UserApplication.getUsers();

                users.getIDUser(user.getOnlineMovieStoreID()).setFirstName(request.getParameter("firstName"));
                users.getIDUser(user.getOnlineMovieStoreID()).setLastName(request.getParameter("lastName"));
                users.getIDUser(user.getOnlineMovieStoreID()).setGender(request.getParameter("gender"));
                users.getIDUser(user.getOnlineMovieStoreID()).setEmail(request.getParameter("email"));
                users.getIDUser(user.getOnlineMovieStoreID()).setPassword(request.getParameter("password"));
                users.getIDUser(user.getOnlineMovieStoreID()).setMobileNumber(request.getParameter("mobileNumber"));
                users.getIDUser(user.getOnlineMovieStoreID()).setAddressResidential(request.getParameter("addressResidential"));
                users.getIDUser(user.getOnlineMovieStoreID()).setAddressSuburb(request.getParameter("addressSuburb"));
                users.getIDUser(user.getOnlineMovieStoreID()).setAddressPostcode(request.getParameter("addressPostcode"));
                users.getIDUser(user.getOnlineMovieStoreID()).setAddressState(request.getParameter("addressState"));
                UserApplication.updateXML(users, filePath);

        %><p>Changes Saved</p><%                    }
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
                        <span class="navbar-caption-wrap"><a href="main.jsp" class="navbar-caption text-white display-4">Online Movie Store</a></span>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                        <li class="nav-item"><a class="nav-link link text-white display-4"></a></li>
                        <li class="nav-item"><a class="nav-link link text-white display-4" ><span class="mbri-cash mbr-iconfont mbr-iconfont-btn"></span>Current Wallet: $70.66 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li>
                        <li class="nav-item"><a class="nav-link link text-white display-4" ><span class="mbri-magic-stick mbr-iconfont mbr-iconfont-btn"></span> Contact Us &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li>
                        <li class="nav-item"><a class="nav-link link text-white display-4" href="manageAccount.jsp"><span class="mbrib-setting2 mbr-iconfont mbr-iconfont-btn"></span> Manage Account &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</a></li>
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
                        <h1 class="display-3"><b>Change your account details</b></h1>
                    </div>

                    <div class="offset-1">
                        View or Change your details below<br>
                        <br>
                    </div>

                    <div class="form-group">
                        <form action="manageAccount.jsp" method="POST">
                            <h3>Personal Details</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="First Name" name="firstName" value="<%=user.getFirstName()%>"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Last Name" name="lastName" value="<%=user.getLastName()%>"/><br>
                            </div>
                            <div class="form-group">
                                <h5>Gender &nbsp &nbsp
                                    <% if(user.getGender().equals("Male")) { %>
                                    <input type="radio"  name="gender" value="<%=user.getGender()%>" checked> Male  
                                    <input type="radio"  name="gender" value="Female"> Female
                                    <% } else { %>
                                    <input type="radio"  name="gender" value="Male"> Male  
                                    <input type="radio"  name="gender" value="<%=user.getGender()%>" checked> Female
                                    <% } %>
                                    <br>
                                </h5>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email" name="email" value="<%=user.getEmail()%>"/><br>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" name="password" value="<%=user.getPassword()%>" /><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="mobile Number" name="mobileNumber" value="<%=user.getMobileNumber()%>"/><br>
                            </div>
                            <h3>Address Details</h3>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Street Address" name="addressResidential" value="<%=user.getAddressResidential()%>"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Suburb" name="addressSuburb" value="<%=user.getAddressSuburb()%>"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Postcode" name="addressPostcode" value="<%=user.getAddressPostcode()%>"/><br>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="State" name="addressState" value="<%=user.getAddressState()%>"/><br>
                            </div>

                            <div class="col-2">
                                <input type="submit" value="Save Changes" class="btn btn-primary"/>
                                <input type="hidden" name="updated" value="updated"/>
                                <input type="hidden" name="id" value="<%=user.getOnlineMovieStoreID()%>"/>
                            </div>

                        </form>
                        <div class="col-2">
                            <form action="removeUser.jsp">
                                <input type="hidden" name="id" value="<%=user.getOnlineMovieStoreID()%>"/>
                                <input type="submit" name="cancel" value="Remove User" class="btn btn-primary"/>
                            </form>
                        </div>
                                
                        <div class="col-2">
                            <form action="userLogs.jsp">
                                <input type="hidden" name="id" value="<%=user.getOnlineMovieStoreID()%>"/>
                                <input type="submit" name="cancel" value="Access User Logs" class="btn btn-primary"/>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>