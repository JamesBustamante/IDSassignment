<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : movieTable.xsl
    Created on : 11 May 2019, 4:41 PM
    Author     : james
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
                <title>movieTable.xsl</title>
            </head>
            <body>
                <div style = "text-align: center;">
                    <xsl:apply-templates select="movies"/>  
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="movies">
        <table align="center" width="200%" >
            <thead >
                <tr>
                    <th></th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>No. Copies</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="movie"/>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="movie">
        <tr>
            <td>
                <img src="{picture}" align="left" height="120" width="85" />
            </td>
            <td>
                <xsl:value-of select="movieTitle"/>
            </td>
            <td>
                <xsl:value-of select="genre"/>
            </td>
            <td>
                <xsl:value-of select="movieQuantity"/>
            </td>
            <td>
                $<xsl:value-of select="moviePrice"/>
            </td>
            <td>
                <form action="descriptionPage.jsp" method="get" >   <!--Creates the button to view movie in more specific detail-->
                    <input type="hidden" name="id" value="{movieTitle}"/>
                    <input type="submit" value="Select" name="select" class="btn btn-info btn-sm"/>
                </form>
                
            </td>
        </tr>
    </xsl:template>
    

</xsl:stylesheet>
