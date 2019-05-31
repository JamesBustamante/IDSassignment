<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : userHistory.xsl
    Created on : 31 May 2019, 1:28 PM
    Author     : Ciaran
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>userHistory.xsl</title>
            </head>
            <body>
                <div class="page-header">
                    <h1>Order History</h1>
                </div>
                <xsl:apply-templates select="orders"/>  
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="orders">
        <div class="container border">
            <table cellpadding="10" style="width: 100%">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Your User ID</th>
                        <th>Order Status</th>
                        <th>Order Date</th>
                        <!--                        <th>Total</th>-->
                        <th>Cancel Order?</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="order"/>
                </tbody>
            </table>
        </div>
    </xsl:template>
    
    <xsl:template match="order">
        <tr>
            <td>
                <xsl:value-of select="orderID"/>
            </td>         
            <td>
                <xsl:value-of select="onlineMovieStoreID"/>
            </td>
            <td>
                <xsl:value-of select="orderStatus"/>
            </td>
            <td>
                <!--<xsl:value-of select="orderDate"/>-->
            </td>
            <td>
                <form action="removeOrderAction.jsp" method="get">
                    <input type="hidden" name="orderID" value="{orderID}"/>
                    <input type="submit" value="Cancel" name="removeOrder" class="btn-primary"/>
                </form>
            </td>
        </tr>        
    </xsl:template>
</xsl:stylesheet>

