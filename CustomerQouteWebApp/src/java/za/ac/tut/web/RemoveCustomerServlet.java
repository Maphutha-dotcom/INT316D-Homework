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

public class RemoveCustomerServlet extends HttpServlet {
    @EJB
    private CustomerQouteFacadeLocal cql;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        CustomerQoute customer = createCustomer(id);
        cql.remove(customer);
        request.setAttribute("customer", customer);
        
        request.getRequestDispatcher("remove_customer_outcome.jsp")
                .forward(request, response);
        
        
    }

    private CustomerQoute createCustomer(Long id) {
        CustomerQoute c = new CustomerQoute();
        c.setId(id);
        return c;
    }
}
