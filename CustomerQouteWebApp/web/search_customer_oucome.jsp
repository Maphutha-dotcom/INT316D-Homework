<%-- 
    Document   : search_customer_oucome
    Created on : 12 May 2025, 7:42:07 AM
    Author     : mamab
--%>

<%@page import="za.ac.tut.entities.CustomerQoute"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Customer Outcome Page</title>
    </head>
    <body>
        <h1>Search Customer Outcome</h1>
        <%
            CustomerQoute c = (CustomerQoute)request.getAttribute("customer");
        %>
        <p>
            <%=c.getCustomerName()%> [<%=c.getId()%>] has been found.
        </p>
            <ol>
            <li>Click <a href="index.html">to go to the home page</a></li>
            <li>Click <a href="menu.jsp">here</a> to go to the menu page</li>
        </ol>
    </body>
</html>
