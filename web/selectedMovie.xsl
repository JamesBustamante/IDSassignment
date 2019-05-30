<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : selectedMovie.xsl
    Created on : 19 May 2019, 10:13 PM
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
                <title>selectedMovie.xsl</title>
            </head>
            <body>
                <div class="page-header">
                    <h1>Order Checkout</h1>
                </div>
                <xsl:apply-templates select="movies"/>  
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="movies">
        <!--<xsl:apply-templates select="movie/>-->
        <div class="container border">
            <table cellpadding="10" style="width: 100%">
                <thead>
                    <tr>
                        <th></th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Release Date</th>
                        <th>Available</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:apply-templates select="movie"/>
                </tbody>
            </table>
        </div>
    </xsl:template>
    
    <xsl:template match="movie">
        <tr>
            <td>
                <img src="{picture}" align="left" height="100" width="75"/>
            </td>   
            <td>
                <xsl:value-of select="movieTitle"/>
            </td>         
            <td>
                <xsl:value-of select="genre"/>
            </td>
            <td>
                <xsl:value-of select="movieReleaseDate"/>
            </td>
            <td>
                <xsl:value-of select="movieQuantity"/>
            </td>
            <td>
                $<xsl:value-of select="moviePrice"/>
            </td>
            <td>
                <form action="removeMovieFromOrderAction.jsp" method="get">   <!-- Creates the button to remove the selected movie.-->
                    <input type="hidden" name="title" value="{movieTitle}"/>
                    <input type="submit" value="Remove" name="removeMovie" class="btn-primary"/>
                </form>
            </td>
        </tr>        
    </xsl:template>
</xsl:stylesheet>
