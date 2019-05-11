/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;
import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;
/**
 *
 * @author james
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "movie")
public class Movie implements Serializable {
    @XmlElement(name = "movieID")
    private String movieID;
    @XmlElement(name = "movieTitle")
    private String movieTitle;
    @XmlElement(name = "genre")
    private String genre;
    @XmlElement(name = "moviePrice")
    private String moviePrice;
    @XmlElement(name = "movieLength")
    private String movieLength;
    @XmlElement(name = "movieQuantity")
    private String movieQuantity;
    @XmlElement(name = "movieReleaseDate")
    private String movieReleaseDate;
    @XmlElement(name = "movieDescription")
    private String movieDescription;
    @XmlElement(name = "ratingIMDB")
    private String ratingIMDB;
    @XmlElement(name = "ratingRT")
    private String ratingRT;
    @XmlElement(name = "picture")
    private String picture;
    
     public Movie() {
    super();
    }

    public Movie(String movieID, String movieTitle, String genre, String moviePrice, String movieLength, String movieQuantity, String movieReleaseDate, String movieDescription, String ratingIMDB, String ratingRT, String picture) {
        this.movieID = movieID;
        this.movieTitle = movieTitle;
        this.genre = genre;
        this.moviePrice = moviePrice;
        this.movieLength = movieLength;
        this.movieQuantity = movieQuantity;
        this.movieReleaseDate = movieReleaseDate;
        this.movieDescription = movieDescription;
        this.ratingIMDB = ratingIMDB;
        this.ratingRT = ratingRT;
        this.picture = picture;
    }
     

    public String getMovieID() {
        return movieID;
    }

    public void setMovieID(String movieID) {
        this.movieID = movieID;
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getMoviePrice() {
        return moviePrice;
    }

    public void setMoviePrice(String moviePrice) {
        this.moviePrice = moviePrice;
    }

    public String getMovieLength() {
        return movieLength;
    }

    public void setMovieLength(String movieLength) {
        this.movieLength = movieLength;
    }

    public String getMovieQuantity() {
        return movieQuantity;
    }

    public void setMovieQuantity(String movieQuantity) {
        this.movieQuantity = movieQuantity;
    }

    public String getMovieReleaseDate() {
        return movieReleaseDate;
    }

    public void setMovieReleaseDate(String movieReleaseDate) {
        this.movieReleaseDate = movieReleaseDate;
    }

    public String getMovieDescription() {
        return movieDescription;
    }

    public void setMovieDescription(String movieDescription) {
        this.movieDescription = movieDescription;
    }

    public String getRatingIMDB() {
        return ratingIMDB;
    }

    public void setRatingIMDB(String ratingIMDB) {
        this.ratingIMDB = ratingIMDB;
    }

    public String getRatingRT() {
        return ratingRT;
    }

    public void setRatingRT(String ratingRT) {
        this.ratingRT = ratingRT;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
     
     
    
    
    
}
