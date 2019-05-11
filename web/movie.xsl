<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : movie.xsl
    Created on : 11 May 2019, 7:56 PM
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
                <title>movie.xsl</title>
            </head>
            <body>
                <div style = "text-align: center;">
                <xsl:apply-templates select="movies"/>  
                </div>
            </body>
        </html>
    </xsl:template>

<xsl:template match="movies">
    <xsl:apply-templates select="movie"/>
    </xsl:template>
    
    <xsl:template match="movie">
        <table align="center" width="200%">
            <tbody>
		<tr>
			<td><xsl:value-of select="movieTitle"/></td>
			<td><img src="{picture}" align="left"/></td>
		</tr>
		<tr>
			<td>Movie: <xsl:value-of select="moviePrice"/></td>
			<td><xsl:value-of select="movieDescription"/></td>
		</tr>
	</tbody>
        
        </table>
         <form action="orderPage.jsp" method="get">   <!--Creates the button to view movie in more specific detail-->
                        <input type="hidden" name="id" value="{movieTitle}"/>
                        <input type="submit" value="Select" name="select"/>
                </form>
    </xsl:template>

</xsl:stylesheet>
