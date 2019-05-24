/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

/**
 * Used for validation of input of JSP pages
 * such as
 * - Adding movies
 * - Or correct returning of search parameters
 *
 * @author james
 */
public class Validate {
    boolean isValid = true; //Check input validation
    boolean movieAdded = false; //Check whether movie object has been modified 

    /**
     *
     * @param isValid
     */
    public Validate(boolean isValid) {
        this.isValid = isValid;
    }
    
    /**
     *
     * @return
     */
    public boolean isMovieAdded() {
        return movieAdded;
    }

    /**
     *
     * @param movieAdded
     */
    public void setMovieAdded(boolean movieAdded) {
        this.movieAdded = movieAdded;
    }

    /**
     *
     */
    public Validate() {
isValid = true;
 movieAdded = false;
    }
    
    /**
     *
     * @return
     */
    public boolean isIsValid() {
        return isValid;
    }

    /**
     *
     * @param isValid
     */
    public void setIsValid(boolean isValid) {
        this.isValid = isValid;
    }
}
