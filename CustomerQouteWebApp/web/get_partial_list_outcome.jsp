<%-- 
    Document   : get_partial_list_outcome
    Created on : 12 May 2025, 10:58:54 AM
    Author     : mamab
--%>

<%@page import="za.ac.tut.entities.CustomerQoute"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Partial List Page</title>
    </head>
    <body>
        <h1>Get Partial List</h1>
        <%
            List<CustomerQoute> list = (List<CustomerQoute>)request.getAttribute("list");
            Integer startIndex = (Integer)request.getAttribute("startIndex");
            Integer endIndex = (Integer)request.getAttribute("endIndex");
        %>
        <p>
            Below is the list of people from the database retrieved from index <%=startIndex%> to <%=endIndex%>
        </p>
        <table>
            <%
                for(int i = 0; i < list.size(); i++){
                CustomerQoute c = list.get(i);
                Long id = c.getId();
                String name = c.getCustomerName();
                
            %>
            <tr>
                <td>ID: </td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Customer Name: </td>
                <td><%=name%></td>
            </tr>
            <%
                }
            %>
        </table>
                    <ol>
            <li>Click <a href="index.html">to go to the home page</a></li>
            <li>Click <a href="menu.jsp">here</a> to go to the menu page</li>
        </ol>
    </body>
</html>
