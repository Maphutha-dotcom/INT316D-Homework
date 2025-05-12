<%-- 
    Document   : menu
    Created on : 11 May 2025, 5:25:24 PM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body style="font-family: 'Arial', sans-serif; background-color: #f3f4f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0;">
        <div style="background-color: #ffffff; padding: 2rem; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); max-width: 450px; width: 100%;">
            <h1 style="font-size: 1.75rem; color: #1f2937; text-align: center; margin-bottom: 1rem;">Menu</h1>
            <p style="font-size: 1rem; color: #4b5563; text-align: center; margin-bottom: 1.5rem;">
                Please select one of the following options:
            </p>
            <ol style="list-style-position: inside; font-size: 1rem; color: #4b5563; margin-bottom: 1rem; text-align: left;">
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="add_customer.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to add a customer
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="edit_customer.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to edit the details of the customer
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="search_customer.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to search for a customer
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="get_list.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to get a list of all the customers
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="get_partial_list" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to get a certain customer by ID
                </li>
                <li style="margin-bottom: 0.5rem;">
                    Click <a href="remove_customer.jsp" style="color: #10b981; text-decoration: none; font-weight: 500; transition: color 0.3s ease;"
                             onmouseover="this.style.color='#059669';"
                             onmouseout="this.style.color='#10b981';">here</a> to remove a customer
                </li>
            </ol>
        </div>
    </body>
</html>
