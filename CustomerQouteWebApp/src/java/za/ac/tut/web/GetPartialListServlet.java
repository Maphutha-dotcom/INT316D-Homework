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

public class GetPartialListServlet extends HttpServlet {
    @EJB
    private CustomerQouteFacadeLocal cql;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer startIndex = Integer.parseInt(request.getParameter("startIndex"));
        Integer endIndex = Integer.parseInt(request.getParameter("endIndex"));
        int[]range = {startIndex, endIndex};
        
        List<CustomerQoute> list = cql.findRange(range);
        request.setAttribute("list", list);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endIndex", endIndex);
        
        request.getRequestDispatcher("get_partial_list_outcome.jsp")
                .forward(request, response);
    }
}
