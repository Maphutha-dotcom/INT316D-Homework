<%-- 
    Document   : edit_customer_outcome
    Created on : 12 May 2025, 7:36:11 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer Outcome Page</title>
    </head>
    <body>
        <h1>Edit Customer Outcome Page</h1>
        <%
            Long id = (Long)request.getAttribute("id");
            String name = (String)request.getAttribute("name");
        %>
        <p>
            <b><%=name%> [<%=id%>]</b> has been successfully edited in the database.
        </p>
            <ol>
            <li>Click <a href="index.html">to go to the home page</a></li>
            <li>Click <a href="menu.jsp">here</a> to go to the menu page</li>
        </ol>
    </body>
</html>
