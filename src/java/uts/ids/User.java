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
    
    /**
     *
     */
    public User() {
    }

    /**
     *
     * @param onlineMovieStoreID
     * @param isStaff
     * @param email
     * @param password
     * @param firstName
     * @param lastName
     * @param gender
     * @param mobileNumber
     * @param addressResidential
     * @param addressSuburb
     * @param addressPostcode
     * @param addressState
     * @param accountStatus
     * @param accountCredit
     */
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
     
    /**
     *
     * @return
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    /**
     *
     * @return
     */
    public String getOnlineMovieStoreID() {
        return onlineMovieStoreID;
    }

    /**
     *
     * @param onlineMovieStoreID
     */
    public void setOnlineMovieStoreID(String onlineMovieStoreID) {
        this.onlineMovieStoreID = onlineMovieStoreID;
    }

    /**
     *
     * @return
     */
    public String getIsStaff() {
        return isStaff;
    }

    /**
     *
     * @param isStaff
     */
    public void setIsStaff(String isStaff) {
        this.isStaff = isStaff;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     *
     * @return
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     *
     * @param firstName
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     *
     * @return
     */
    public String getLastName() {
        return lastName;
    }

    /**
     *
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     *
     * @return
     */
    public String getGender() {
        return gender;
    }

    /**
     *
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     *
     * @return
     */
    public String getMobileNumber() {
        return mobileNumber;
    }

    /**
     *
     * @param mobileNumber
     */
    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    /**
     *
     * @return
     */
    public String getAddressResidential() {
        return addressResidential;
    }

    /**
     *
     * @param addressResidential
     */
    public void setAddressResidential(String addressResidential) {
        this.addressResidential = addressResidential;
    }

    /**
     *
     * @return
     */
    public String getAddressSuburb() {
        return addressSuburb;
    }

    /**
     *
     * @param addressSuburb
     */
    public void setAddressSuburb(String addressSuburb) {
        this.addressSuburb = addressSuburb;
    }

    /**
     *
     * @return
     */
    public String getAddressPostcode() {
        return addressPostcode;
    }

    /**
     *
     * @param addressPostcode
     */
    public void setAddressPostcode(String addressPostcode) {
        this.addressPostcode = addressPostcode;
    }

    /**
     *
     * @return
     */
    public String getAddressState() {
        return addressState;
    }

    /**
     *
     * @param addressState
     */
    public void setAddressState(String addressState) {
        this.addressState = addressState;
    }

    /**
     *
     * @return
     */
    public String getAccountStatus() {
        return accountStatus;
    }

    /**
     *
     * @param accountStatus
     */
    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    /**
     *
     * @return
     */
    public String getAccountCredit() {
        return accountCredit;
    }

    /**
     *
     * @param accountCredit
     */
    public void setAccountCredit(String accountCredit) {
        this.accountCredit = accountCredit;
    }
    
    /**
     *
     * @param email
     * @return
     */
    public boolean matchEmail(String email) {
        return this.email.equals(email.trim());
    }


    
    
    
}
