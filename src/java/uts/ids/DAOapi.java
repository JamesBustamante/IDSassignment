/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.ids;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 *
 * @author james
 */
public interface DAOapi<T> {
     
    Optional<T> get(long id);
     
    ArrayList<T> getAll();
     
    void save(T t);
     
    void update(T t, String[] params);
     
    void delete(T t);
}