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
                <FONT SIZE="14">
                    <xsl:value-of  select="/movies/movie/movieTitle"/> 
                </FONT>
                <xsl:apply-templates select="movies"/>  
            </body>
        </html>
    </xsl:template>

    <xsl:template match="movies">
        <xsl:apply-templates select="movie"/>
    </xsl:template>
    
    <xsl:template match="movie">
        <table>
            <tbody>
                <tr >
                    <td>
                        <img src="{picture}" align="left" height="600" width="450"/>
                    </td>
                    <td VALIGN="TOP" align="center"> 
                        <table  cellpadding = "25">
                            <tbody>
                                <tr>
                                    <td>
                                        <b>Movie Genre: </b>
                                    </td>
                                    <td>
                                        <xsl:value-of select="genre"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Length:</b> 
                                    </td>
                                    <td> 
                                        <xsl:value-of select="movieLength"/> minutes</td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Movie Release Date:</b>  
                                    </td>
                                    <td> 
                                        <xsl:value-of select="movieReleaseDate"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b> Available Quantity:</b> 
                                    </td>
                                    <td>
                                        <xsl:value-of select="movieQuantity"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b> Price: </b>
                                    </td>
                                    <td> $<xsl:value-of select="moviePrice"/></td>
                                </tr>
                            </tbody>
                        </table>
                         
                        <br />
                        <xsl:text>&#xA;</xsl:text> 
                            
                        <p align="left" style="padding-left: 50px; padding-bottom: 20px;">
                            <xsl:value-of select="movieDescription"/>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding-left: 50px; padding-bottom: 20px;">
                        <xsl:choose>
                            <xsl:when test="movieQuantity != '0'">
                                <form action="orderPage.jsp" method="get">   <!--Creates the button to reserve movies.-->
                                    <input type="hidden" name="title" value="{title}"/>
                                    <input type="submit" value="Add Movie To Order" name="select" class="btn btn-info btn-sm"/>
                                </form>
                            </xsl:when>
                            <xsl:otherwise>Unavailable</xsl:otherwise>
                        </xsl:choose>
                    </td>
                </tr>
            </tbody>
        
        </table>
        
    </xsl:template>

</xsl:stylesheet>
