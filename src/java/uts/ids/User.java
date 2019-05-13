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

import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;

/**
 *
 * @author james
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "user")
public class User implements Serializable {

    @XmlElement(name = "onlineMovieStoreID")
    private String onlineMovieStoreID;
    @XmlElement(name = "isStaff")
    private String isStaff;
     @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "firstName")
    private String firstName;
    @XmlElement(name = "lastName")
    private String lastName;
    @XmlElement(name = "gender")
    private String gender;
    @XmlElement(name = "mobileNumber")
    private String mobileNumber;
    @XmlElement(name = "addressResidential")
    private String addressResidential;
    @XmlElement(name = "addressSuburb")
    private String addressSuburb;
    @XmlElement(name = "addressPostcode")
    private String addressPostcode;
    @XmlElement(name = "addressState")
    private String addressState;
    @XmlElement(name = "accountStatus")
    private String accountStatus;
    @XmlElement(name = "accountCredit")
    private String accountCredit;
    
     public User() {
    }

    public User(String onlineMovieStoreID, String isStaff, String email, String password, String firstName, String lastName, String gender, String mobileNumber, String addressResidential, String addressSuburb, String addressPostcode, String addressState, String accountStatus, String accountCredit) {
        this.onlineMovieStoreID = onlineMovieStoreID;
        this.isStaff = isStaff;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.mobileNumber = mobileNumber;
        this.addressResidential = addressResidential;
        this.addressSuburb = addressSuburb;
        this.addressPostcode = addressPostcode;
        this.addressState = addressState;
        this.accountStatus = accountStatus;
        this.accountCredit = accountCredit;
    }
     
     

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getOnlineMovieStoreID() {
        return onlineMovieStoreID;
    }

    public void setOnlineMovieStoreID(String onlineMovieStoreID) {
        this.onlineMovieStoreID = onlineMovieStoreID;
    }

    public String getIsStaff() {
        return isStaff;
    }

    public void setIsStaff(String isStaff) {
        this.isStaff = isStaff;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getAddressResidential() {
        return addressResidential;
    }

    public void setAddressResidential(String addressResidential) {
        this.addressResidential = addressResidential;
    }

    public String getAddressSuburb() {
        return addressSuburb;
    }

    public void setAddressSuburb(String addressSuburb) {
        this.addressSuburb = addressSuburb;
    }

    public String getAddressPostcode() {
        return addressPostcode;
    }

    public void setAddressPostcode(String addressPostcode) {
        this.addressPostcode = addressPostcode;
    }

    public String getAddressState() {
        return addressState;
    }

    public void setAddressState(String addressState) {
        this.addressState = addressState;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    public String getAccountCredit() {
        return accountCredit;
    }

    public void setAccountCredit(String accountCredit) {
        this.accountCredit = accountCredit;
    }
    
     public boolean matchEmail(String email) {
        return this.email.equals(email.trim());
    }


    
    
    
}
