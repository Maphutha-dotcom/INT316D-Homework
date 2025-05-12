<%-- 
    Document   : remove_customer_outcome
    Created on : 12 May 2025, 10:59:25 AM
    Author     : mamab
--%>

<%@page import="za.ac.tut.entities.CustomerQoute"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Customer Page</title>
    </head>
    <body>
        <h1>Remove Customer Outcome</h1>
        <%
            CustomerQoute c = (CustomerQoute)request.getAttribute("customer");
        %>
        <p>
            The customer with id number <b><%=c.getId()%></b> has been successfully removed from the database.
        </p>
             <ol>
            <li>Click <a href="index.html">to go to the home page</a></li>
            <li>Click <a href="menu.jsp">here</a> to go to the menu page</li>
        </ol>
    </body>
</html>
