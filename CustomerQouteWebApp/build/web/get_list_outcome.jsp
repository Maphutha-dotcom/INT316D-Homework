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
        <title>Get List Outcome Page</title>
    </head>
    <body style="font-family: 'Arial', sans-serif; background-color: #f3f4f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0;">
        <div style="background-color: #ffffff; padding: 2rem; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); max-width: 600px; width: 100%;">
            <h1 style="font-size: 1.75rem; color: #1f2937; text-align: center; margin-bottom: 1rem;">Get List Outcome</h1>
            <%
                List<CustomerQoute> list = (List<CustomerQoute>)request.getAttribute("list");
            %>
            <p style="font-size: 1rem; color: #4b5563; text-align: center; margin-bottom: 1.5rem;">
                Below is the list of people retrieved from the database.
            </p>
            <table style="width: 100%; border-collapse: collapse; margin-bottom: 1.5rem;">
                <%
                    for(int i = 0; i < list.size(); i++){
                        CustomerQoute c = list.get(i);
                        Long id = c.getId();
                        String name = c.getCustomerName();
                        String pName = c.getProductName();
                        Integer quantity = c.getQuantity();
                        Double unitPrice = c.getUnitPrice();
                        Double totalPrice = c.getTotalPrice();
                %>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">ID:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=id%></td>
                </tr>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Name:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=name%></td>
                </tr>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Product Name:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=pName%></td>
                </tr>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Quantity:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=quantity%></td>
                </tr>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Unit Price:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=unitPrice%></td>
                </tr>
                <tr style="border-bottom: 1px solid #e5e7eb;">
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Total Price:</td>
                    <td style="padding: 0.75rem; font-size: 0.9rem; color: #1f2937;"><%=totalPrice%></td>
                </tr>
                <% 
                    }
                %>
            </table>
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
