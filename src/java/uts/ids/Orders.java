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
@XmlRootElement(name = "orders")
public class Orders implements Serializable {
    
    @XmlElement(name = "order")
    private ArrayList<Order> orders = new ArrayList<Order>();
    
    public Orders(){
    }
    
    
    /**
     * getter for arrayList list
     * @return list
     */
    public ArrayList<Order> getOrders() {
        return orders;
    }

    /**
     * adds order to the arrayList orders
     * @param user
     */
    public void addOrder(Order order) {
        orders.add(order);
    }

    /**
     * removes user from the arrayList list
     * @param user
     */
    public void removeUser(Order order) {
        orders.remove(order);
    }

    /**
     *
     * @param orderID
     * @return
     */
    public Order getOrder(String orderID) {
        // For each order in the list...
        for (Order order : orders) {
            if (order.getOrderID().equals(orderID))
                return order; // Login correct. Return this user.
        }
        return null; // Login incorrect. Return null.
    }
    
    /**
     * checks through list of orders in the list and checks id
     * @param orderID
     * @return boolean
     */
    public boolean isOrder(String orderID) {
        for (Order order : orders) {
            if (order.matchOrderID(orderID)) { //if order id matches
                return true;
            }
        }
        return false;
    }   
}
