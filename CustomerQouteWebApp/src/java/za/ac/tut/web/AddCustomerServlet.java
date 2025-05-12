package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.CustomerQouteFacadeLocal;
import za.ac.tut.entities.CustomerQoute;

public class AddCustomerServlet extends HttpServlet {
    @EJB
    private CustomerQouteFacadeLocal cql;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name"); 
        String pName = request.getParameter("pName");
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));
        Double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
        
        Double subTotal = quantity * unitPrice;
        Double totalPrice;
        
        if(quantity >= 10){
            totalPrice = subTotal * 0.9;
        }else{
            totalPrice = subTotal;
        }
        
        CustomerQoute customer = createPerson(name, pName, quantity, unitPrice, totalPrice);
        cql.create(customer);//persist the customer
        request.setAttribute("name", name);
        
        request.getRequestDispatcher("add_customer_outcome.jsp")
                .forward(request, response);
        
    }

    private CustomerQoute createPerson(String name, String pName, Integer quantity, Double unitPrice, Double totalPrice) {
        CustomerQoute c = new CustomerQoute();
        c.setCustomerName(name);
     //   c.setProductName(pName);
        c.setQuantity(quantity);
        c.setUnitPrice(unitPrice);
        c.setTotalPrice(totalPrice);
        return c;
    }
}
