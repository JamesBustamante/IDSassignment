/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

/**
 *
 * @author james
 */
public class Validate {
    boolean isValid = true;
    boolean movieAdded = false;

    public Validate(boolean isValid) {
        this.isValid = isValid;
    }
    

    public boolean isMovieAdded() {
        return movieAdded;
    }

    public void setMovieAdded(boolean movieAdded) {
        this.movieAdded = movieAdded;
    }

    
    
    public Validate() {
isValid = true;
 movieAdded = false;
    }
    
    

    
    public boolean isIsValid() {
        return isValid;
    }

    public void setIsValid(boolean isValid) {
        this.isValid = isValid;
    }
}
