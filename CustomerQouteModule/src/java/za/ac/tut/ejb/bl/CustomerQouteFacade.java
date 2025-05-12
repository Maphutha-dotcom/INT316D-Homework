/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.CustomerQoute;

/**
 *
 * @author mamab
 */
@Stateless
public class CustomerQouteFacade extends AbstractFacade<CustomerQoute> implements CustomerQouteFacadeLocal {

    @PersistenceContext(unitName = "CustomerQouteModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerQouteFacade() {
        super(CustomerQoute.class);
    }

}
