/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.util.*;
import java.io.*;
import javax.xml.bind.annotation.*;

/**
 *
 * @author Ciaran
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "order")
public class Order implements Serializable{
    
    @XmlElement(name = "orderID")
    private String orderID;
    @XmlElement(name = "onlineMovieStoreID") //USER ID
    private String ID;
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "orderStatus")
    private String orderStatus;    
    @XmlElementWrapper(name = "purchases")
    @XmlElement(name = "moviePurchase")
    private ArrayList<Movie> purchases;
    @XmlElement(name = "orderDate")
    private String orderDate;
  
    
    public Order(){
    }
    
/**
     * creates and instance of parameters
     *
     * @param orderID
     * @param purchases
     * @param ID
     * @param email
     * @param orderStatus
     */
    public Order(String orderID, ArrayList<Movie> purchases, String ID, String email, String orderStatus) {
        this.orderID = orderID;
        this.purchases = purchases;
        this.ID = ID;
        this.email = email;
        this.orderStatus = orderStatus;
    }

    /**
     * getter for arrayList purchases
     *
     * @return purchases
     */
    public ArrayList<Movie> getPurchases() {
        return purchases;
    }
    
    public String getTitles(){
        String i = new String();
        for(Movie movie : purchases){
            i += movie.getMovieTitle() + ", ";
        }
        return i;
    }

    /**
     * creates an instance of the parameter purchases
     *
     * @param purchases
     */
    public void setPurchases(ArrayList<Movie> purchases) {
        this.purchases = purchases;
    }

    /**
     * getter for orderID
     *
     * @return orderID
     */
    public String getOrderID() {
        return orderID;
    }

    /**
     * setter for orderID creates an instance of parameter orderID
     *
     * @param orderID
     */
    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    /**
     * getter for email
     *
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * creates and instance for email
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * getter of ID
     *
     * @return ID
     */
    public String getID() {
        return ID;
    }

    /**
     * creates an instance for ID
     *
     * @param ID
     */
    public void setID(String ID) {
        this.ID = ID;
    }

    /**
     * getter for orderStatus
     *
     * @return orderStatus
     */
    public String getOrderStatus() {
        return orderStatus;
    }

    /**
     * creates an instance of orderStatus
     *
     * @param orderStatus
     */
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
    
    /**
     * getter for orderDate
     *
     * @return orderDate
     */
    public String getOrderDate() {
        return orderDate;
    }

    /**
     * creates an instance of orderDate
     *
     * @param orderDate
     */
    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }    

    /**
     * returns a boolean for email without whitespace
     *
     * @param email
     * @return boolean
     */
    public boolean matchEmail(String email) {
        return this.email.equals(email.trim());
    }

    /**
     * returns a boolean for orderID without whitespace
     *
     * @param orderID
     * @return boolean
     */
    public boolean matchOrderID(String orderID) {
        return this.orderID.equals(orderID.trim());
    }

    /**
     * returns a boolean for orderStatus without whitespace
     *
     * @param orderStatus
     * @return boolean
     */
    public boolean matchOrderStatus(String orderStatus) {
        return this.orderStatus.equals(orderStatus.trim());
    }

    /**
     * returns a boolean for ID without whitespace
     *
     * @param ID
     * @return boolean
     */
    public boolean matchID(String ID) {
        return this.ID.equals(ID.trim());
    }

}
