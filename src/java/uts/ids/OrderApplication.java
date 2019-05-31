/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.util.*;
import javax.xml.bind.annotation.*;
import java.io.*;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author Ciaran
 */
public class OrderApplication {
    
    private String filePath;
    private Orders orders;

    /**
     *
     * @param filePath
     * @param orders
     */
    public OrderApplication(String filePath, Orders orders) {
        super();
        this.filePath = filePath;
        this.orders = orders;
    }
    
    /**
     *
     */
    public OrderApplication() {
    }

    /**
     *
     * @return
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     *
     * @param filePath
     * @throws Exception
     */
    public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Orders.class);
        Unmarshaller u = jc.createUnmarshaller();

        this.filePath = filePath;
        FileInputStream fin = new FileInputStream(filePath);
        orders = (Orders) u.unmarshal(fin);
        fin.close();
    }

    /**
     *
     * @param orders
     * @param filePath
     * @throws Exception
     */
    public void updateXML(Orders orders, String filePath) throws Exception {
        this.orders = orders;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Orders.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(orders, fout);
        fout.close();
    }

    /**
     *
     * @throws JAXBException
     * @throws IOException
     */
    public void saveOrders() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Orders.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(orders, fout);
        fout.close();
    }

    /**
     * getter for orders
     *
     * @return
     */
    public Orders getOrders() {
        return orders;
    }

    /**
     * creates an instance of orders
     *
     * @param orders
     */
    public void setOrders(Orders orders) {
        this.orders = orders;
    }
        
}
