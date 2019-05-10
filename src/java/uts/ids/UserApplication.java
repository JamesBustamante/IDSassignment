/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 *
 * @author james
 */
public class UserApplication {
    
    private String filePath;
    private Users users;

    public UserApplication(String filePath, Users users) {
        super();
        this.filePath = filePath;
        this.users = users;
    }
    
        public UserApplication() {
    }

    public String getFilePath() {
        return filePath;
    }

    
      public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller u = jc.createUnmarshaller();

        this.filePath = filePath;
        FileInputStream fin = new FileInputStream(filePath);
        users = (Users) u.unmarshal(fin); // This loads the "shop" object
        fin.close();
    }

    /**
     *
     * @param users
     * @param filePath
     * @throws Exception
     */
    public void updateXML(Users users, String filePath) throws Exception {
        this.users = users;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }

    /**
     *
     * @throws JAXBException
     * @throws IOException
     */
    public void saveUsers() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(users, fout);
        fout.close();
    }

    /**
     * getter for users
     *
     * @return
     */
    public Users getUsers() {
        return users;
    }

    /**
     * creates an instance of users
     *
     * @param users
     */
    public void setUsers(Users users) {
        this.users = users;
    }
    
    
}
