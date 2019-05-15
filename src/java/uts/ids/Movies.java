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
 *
 * @author james
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "movies")
public class Movies implements Serializable {
   
    @XmlElement(name = "movie")
    private ArrayList<Movie> movies = new ArrayList<Movie>();
    
    public Movies() {
    }
    
    public ArrayList<Movie> getMovies() {
        return movies;
    }
    
    public Movie getMoviebyID(String ID){
        for(Movie movie:movies)
            if(movie.getMovieID().equalsIgnoreCase(ID))
                return movie;
        return null;
    }
    
     public void removeMovie(Movie movie) {
        movies.remove(movie);
    }
     
     public void addMovie(Movie movie) {
        movies.add(movie);
    }
     
     public ArrayList<Movie> getMovieMatches(String userInput){
        ArrayList<Movie> matches = new ArrayList<>();
        ArrayList<Movie> returnMatches = new ArrayList<>();
        for(Movie movie:movies)
            if(movie.getGenre().equalsIgnoreCase(userInput) || movie.getMovieTitle().equalsIgnoreCase(userInput))
                matches.add(movie);
        for (Movie movie: matches) {
            if (!returnMatches.contains(movie)) {
                returnMatches.add(movie);
            }
        }
        return returnMatches;
    }
     
     public ArrayList<Movie> getGenreMatches(String genre){
        ArrayList<Movie> matches = new ArrayList<>();
        for(Movie movie:movies)
            if(movie.getGenre().equalsIgnoreCase(genre))
                matches.add(movie);
        return matches;
    }
}
