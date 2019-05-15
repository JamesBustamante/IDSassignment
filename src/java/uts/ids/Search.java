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
public class Search {
    String userInput;

    public Search(String userInput) {
        this.userInput = userInput;
    }

    public String getUserInput() {
        return userInput;
    }

    public void setUserInput(String userInput) {
        this.userInput = userInput;
    }

    public Search() {
        userInput = "";
    }
    
    public void emptySearch() {
        userInput = "";
    }
    
}
