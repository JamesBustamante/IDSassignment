/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

/**
 * JAVABEAN SEARCH: where user input is stored into java file to allow manipulation in
 * jsp pages
 * @author james
 */
public class Search {
    String userInput;

    /**
     *
     * @param userInput
     */
    //Default constructor of for user input
    public Search(String userInput) {
        this.userInput = userInput;
    }

    /**
     * get input from user
     * @return
     */
    public String getUserInput() {
        return userInput;
    }

    /**
     * Set the input from the user
     * @param userInput
     */
    public void setUserInput(String userInput) {
        this.userInput = userInput;
    }

    /**
     * default the search to empty (default)
     */
    public Search() {
        userInput = "";
    }
    
    /**
     * empty parameters (reset search)
     */
    public void emptySearch() {
        userInput = "";
    }
    
}
