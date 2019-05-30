/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;
/**
 * used to for the MOVIES.xml data
 * to help with the manipulation of data
 * @author james
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "movies")
public class Movies implements Serializable {
   
    @XmlElement(name = "movie")
    private ArrayList<Movie> movies = new ArrayList<Movie>();
    
    /**
     *
     */
    public Movies() {
    }
    
    /**
     *
     * @return
     */
    public ArrayList<Movie> getMovies() {
        return movies;
    }
    
    /**
     * match movies via movie ID
     * @param ID
     * @return
     */
    public Movie getMoviebyID(String ID){
        for(Movie movie:movies) //itr through movie list
            if(movie.getMovieID().equalsIgnoreCase(ID)) //if ID matched
                return movie; //return the given movie
        return null; //else not found
    }
    
    /**
     * match movies via movie ID
     * @param ID
     * @return
     */
    public Movie getMoviebyTitle(String Title){
        for(Movie movie:movies) //itr through movie list
            if(movie.getMovieTitle().equalsIgnoreCase(Title)) //if Title matched
                return movie; //return the given movie
        return null; //else not found
    }
    
    /**
     * remove movie from the movies object ready to be mashalled
     * @param movie
     */
    public void removeMovie(Movie movie) {
        movies.remove(movie);
    }
     
    /**
     * adds a movie to the movies object ready to marshalled
     * @param movie
     */
    public void addMovie(Movie movie) {
        movies.add(movie);
    }
     
    /**
     * get movie match of either input of genre or movie title
     * @param userInput
     * @return
     */
    public ArrayList<Movie> getMovieMatches(String userInput){
        ArrayList<Movie> matches = new ArrayList<>(); //matches for movies arraylist
        ArrayList<Movie> returnMatches = new ArrayList<>(); //another array list with no duplicates
        for(Movie movie:movies) //Iterate through list
            if(movie.getGenre().equalsIgnoreCase(userInput) || movie.getMovieTitle().equalsIgnoreCase(userInput))
                matches.add(movie); //addmovie to release
        for (Movie movie: matches) { //iterate again of list of added movies to prevent duplicates occuring
            if (!returnMatches.contains(movie)) {
                returnMatches.add(movie); //add to return list
            }
        }
        return returnMatches; // return array list
    }
     
    /**
     * Get all the movies that match given parameter
     * @param genre
     * @return
     */
    public ArrayList<Movie> getGenreMatches(String genre){
        ArrayList<Movie> matches = new ArrayList<>(); //Create ArrayList
        for(Movie movie:movies) //Iterate through list
            if(movie.getGenre().equalsIgnoreCase(genre)) //if matches in XML
                matches.add(movie); //Add to array list 
        return matches; //Return array list
    }
}
