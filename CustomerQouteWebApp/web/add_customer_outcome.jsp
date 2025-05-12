<%-- 
    Document   : add_customer_outcome
    Created on : 12 May 2025, 7:30:26 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Customer Page</title>
    </head>
    <body>
        <h1>Add Customer Outcome</h1>
        <%
            String name = (String)request.getAttribute("name");
        %>
        <p>
            <b><%=name%></b> has been successfully added to the database
        </p>
        <ol>
            <li>Click <a href="index.html">to go to the home page</a></li>
            <li>Click <a href="menu.jsp">here</a> to go to the menu page</li>
        </ol>
    </body>
</html>
