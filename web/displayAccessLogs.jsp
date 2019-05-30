<%-- 
    Document   : test
    Created on : 28/05/2019, 12:26:30 PM
    Author     : edwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
    table,th,td {
        border : 1px solid black;
        border-collapse: collapse;
    }
    th,td {
        padding: 5px;
    }
</style>


<button type="button" onclick="loadXMLDoc()">Display Access Logs</button>
<br><br>
<table id="access logs"></table>

<script>
    function loadXMLDoc() {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                myFunction(this);
            }
        };
        xmlhttp.open("GET", "WEB-INF/accesslogs.xml", true);
        xmlhttp.send();
    }
    function myFunction(xml) {
        var i;
        var xmlDoc = xml.responseXML;
        var table = "<tr><th>LogID</th><th>Login Date</th><th>Login Time</th><th>Logout Date</th><th>Logout Time</th><th>Delete</th></tr>";
        var x = xmlDoc.getElementsByTagName("log");
        for (i = 0; i < x.length; i++) {
            table += "<tr><td>" +
                    x[i].getElementsByTagName("accesslogID")[0].childNodes[0].nodeValue +
                    "</td><td>" +
                    x[i].getElementsByTagName("loginDate")[0].childNodes[0].nodeValue +
                    "</td><td>" +
                    x[i].getElementsByTagName("loginTime")[0].childNodes[0].nodeValue +
                    "</td><td>" +
                    x[i].getElementsByTagName("logoutDate")[0].childNodes[0].nodeValue +
                    "</td><td>" +
                    x[i].getElementsByTagName("logoutTime")[0].childNodes[0].nodeValue +
                    "</td></tr>";
        }
        document.getElementById("access logs").innerHTML = table;
    }
</script>







