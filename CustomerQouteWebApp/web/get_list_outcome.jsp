<%-- 
    Document   : get_list_outcome
    Created on : 12 May 2025, 7:48:54 AM
    Author     : mamab
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.CustomerQoute"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List outcome Page</title>
    </head>
    <body>
        <h1>Get List Outcome</h1>
        <%
            List<CustomerQoute> list = (List<CustomerQoute>)request.getAttribute("list");
        %>
        <p>
            Below is the list of people retrieved from the database.
        </p>
        <table>
            <%
                for(int i= 0; 1 < list.size(); i++){
                    CustomerQoute c = list.get(i);
                    Long id = c.getId();
                    String name = c.getCustomerName();
                    String pName = c.getProductName();
                    Integer quantity = c.getQuantity();
                    Double unitPrice = c.getUnitPrice();
                    Double totalPrice = c.getTotalPrice();
            %>
            <tr>
                <td>ID: </td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Product Name: </td>
                <td><%=pName%></td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td><%=quantity%></td>
            </tr>
            <tr>
                <td>Unit Price: </td>
                <td><%=unitPrice%></td>
            </tr>
            <tr>
                <td>Total Price</td>
                <td><%=totalPrice%></td>
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
