/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import javax.ejb.Stateless;

/**
 *
 * @author mamab
 */
@Stateless
public class CurrencyConvertorSB implements CurrencyConvertorSBLocal {
    private final double DOLLAR_AMOUNT = 20; 
    
    @Override
    public Double randToDollar(Double rand) {
        Double dollar = rand * DOLLAR_AMOUNT;
        return dollar;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public Double dollarToRand(Double dollar) {
        Double rand = dollar/DOLLAR_AMOUNT;
        return rand;
    }
}
