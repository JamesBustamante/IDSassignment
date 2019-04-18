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
public class User {
    private String name;
    private String email;
    private String password;
    private String dob;
    private String userID;

    public User(String name, String email, String password, String dob, String userID) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.userID = userID;
    }
    
    public User() {
  
}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }
    
    
    
    
    
}
