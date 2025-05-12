package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.CustomerQouteFacadeLocal;
import za.ac.tut.entities.CustomerQoute;

public class GetListServlet extends HttpServlet {
    @EJB
    private CustomerQouteFacadeLocal cql;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<CustomerQoute> list = cql.findAll();
        request.setAttribute("list", list);
        
        request.getRequestDispatcher("get_list_outcome.jsp")
                .forward(request, response);
    }

}
