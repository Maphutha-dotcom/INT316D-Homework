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
        <title>Remove Customer Outcome Page</title>
    </head>
    <body style="font-family: 'Arial', sans-serif; background-color: #f3f4f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0;">
        <div style="background-color: #ffffff; padding: 2rem; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); max-width: 450px; width: 100%; text-align: center;">
            <h1 style="font-size: 1.75rem; color: #1f2937; margin-bottom: 1rem;">Remove Customer Outcome</h1>
            <%
                CustomerQoute c = (CustomerQoute)request.getAttribute("customer");
            %>
            <p style="font-size: 1rem; color: #4b5563; margin-bottom: 1.5rem;">
                The customer with ID number <b style="color: #10b981;"><%=c.getId()%></b> has been successfully removed from the database.
            </p>
            <ol style="list-style-position: inside; font-size: 1rem; color: #4b5563; margin-bottom: 1rem; text-align: left;">
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="index.html" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">to go to the home page</a>
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="menu.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to go to the menu page
                </li>
            </ol>
        </div>
    </body>
</html>
