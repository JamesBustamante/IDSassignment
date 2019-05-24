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
 * THE MODEL FOR MOVIES.XML
 * 
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
    
    /**
     *
     */
    public Movie() {
    super();
    }

    /**
     *
     * @param movieID
     * @param movieTitle
     * @param genre
     * @param moviePrice
     * @param movieLength
     * @param movieQuantity
     * @param movieReleaseDate
     * @param movieDescription
     * @param ratingIMDB
     * @param ratingRT
     * @param picture
     */
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
     
    /**
     *
     * @return
     */
    public String getMovieID() {
        return movieID;
    }

    /**
     *
     * @param movieID
     */
    public void setMovieID(String movieID) {
        this.movieID = movieID;
    }

    /**
     *
     * @return
     */
    public String getMovieTitle() {
        return movieTitle;
    }

    /**
     *
     * @param movieTitle
     */
    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }

    /**
     *
     * @return
     */
    public String getGenre() {
        return genre;
    }

    /**
     *
     * @param genre
     */
    public void setGenre(String genre) {
        this.genre = genre;
    }

    /**
     *
     * @return
     */
    public String getMoviePrice() {
        return moviePrice;
    }

    /**
     *
     * @param moviePrice
     */
    public void setMoviePrice(String moviePrice) {
        this.moviePrice = moviePrice;
    }

    /**
     *
     * @return
     */
    public String getMovieLength() {
        return movieLength;
    }

    /**
     *
     * @param movieLength
     */
    public void setMovieLength(String movieLength) {
        this.movieLength = movieLength;
    }

    /**
     *
     * @return
     */
    public String getMovieQuantity() {
        return movieQuantity;
    }

    /**
     *
     * @param movieQuantity
     */
    public void setMovieQuantity(String movieQuantity) {
        this.movieQuantity = movieQuantity;
    }

    /**
     *
     * @return
     */
    public String getMovieReleaseDate() {
        return movieReleaseDate;
    }

    /**
     *
     * @param movieReleaseDate
     */
    public void setMovieReleaseDate(String movieReleaseDate) {
        this.movieReleaseDate = movieReleaseDate;
    }

    /**
     *
     * @return
     */
    public String getMovieDescription() {
        return movieDescription;
    }

    /**
     *
     * @param movieDescription
     */
    public void setMovieDescription(String movieDescription) {
        this.movieDescription = movieDescription;
    }

    /**
     *
     * @return
     */
    public String getRatingIMDB() {
        return ratingIMDB;
    }

    /**
     *
     * @param ratingIMDB
     */
    public void setRatingIMDB(String ratingIMDB) {
        this.ratingIMDB = ratingIMDB;
    }

    /**
     *
     * @return
     */
    public String getRatingRT() {
        return ratingRT;
    }

    /**
     *
     * @param ratingRT
     */
    public void setRatingRT(String ratingRT) {
        this.ratingRT = ratingRT;
    }

    /**
     *
     * @return
     */
    public String getPicture() {
        return picture;
    }

    /**
     *
     * @param picture
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }
     
     
    
    
    
}
