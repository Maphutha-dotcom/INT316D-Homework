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

public class EditCustomerServlet extends HttpServlet {
    @EJB
    private CustomerQouteFacadeLocal cql;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        
        CustomerQoute customer = createPerson(id, name);
        cql.edit(customer);
        
        request.getRequestDispatcher("edit_cutomer_outcome.jsp")
                .forward(request, response);
    }

    private CustomerQoute createPerson(Long id, String name) {
        CustomerQoute c = cql.find(id);
        c.setCustomerName(name);
        return c;
    }
}
