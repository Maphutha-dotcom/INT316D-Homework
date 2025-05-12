/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.CustomerQoute;

/**
 *
 * @author mamab
 */
@Local
public interface CustomerQouteFacadeLocal {

    void create(CustomerQoute customerQoute);

    void edit(CustomerQoute customerQoute);

    void remove(CustomerQoute customerQoute);

    CustomerQoute find(Object id);

    List<CustomerQoute> findAll();

    List<CustomerQoute> findRange(int[] range);

    int count();
    
    //calculating the total price
    
    Double totalPrice(Integer quantity, Double unitPrice);
    
}
