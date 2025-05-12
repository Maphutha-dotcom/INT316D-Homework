<%-- 
    Document   : edit_customer
    Created on : 12 May 2025, 5:07:49 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Customer Page</title>
    </head>
    <body style="font-family: 'Arial', sans-serif; background-color: #f3f4f6; display: flex; justify-content: center; align-items: center; min-height: 100vh; margin: 0;">
        <div style="background-color: #ffffff; padding: 2rem; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); max-width: 450px; width: 100%;">
            <h1 style="font-size: 1.75rem; color: #1f2937; text-align: center; margin-bottom: 1rem;">Edit Customer</h1>
            <p style="font-size: 1rem; color: #4b5563; text-align: center; margin-bottom: 1.5rem;">
                Please enter the details of the person to edit.
            </p>
            <form action="EditCustomerServlet.do" method="POST">
                <table style="width: 100%; border-collapse: collapse;">
                    <tr>
                        <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">ID:</td>
                        <td style="padding: 0.75rem;">
                            <input type="text" name="id" required 
                                   style="width: 100%; padding: 0.75rem; font-size: 1rem; color: #1f2937; background-color: #f9fafb; border: 1px solid #d1d5db; border-radius: 8px; transition: all 0.3s ease;"
                                   onfocus="this.style.borderColor='#10b981'; this.style.boxShadow='0 0 0 3px rgba(16, 185, 129, 0.2);'"
                                   onblur="this.style.borderColor='#d1d5db'; this.style.boxShadow='none';"
                                   onmouseover="this.style.borderColor='#9ca3af';"
                                   onmouseout="this.style.borderColor='#d1d5db';">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 0.75rem; font-size: 0.9rem; color: #374151; font-weight: 500;">Name:</td>
                        <td style="padding: 0.75rem;">
                            <input type="text" name="name" required 
                                   style="width: 100%; padding: 0.75rem; font-size: 1rem; color: #1f2937; background-color: #f9fafb; border: 1px solid #d1d5db; border-radius: 8px; transition: all 0.3s ease;"
                                   onfocus="this.style.borderColor='#10b981'; this.style.boxShadow='0 0 0 3px rgba(16, 185, 129, 0.2);'"
                                   onblur="this.style.borderColor='#d1d5db'; this.style.boxShadow='none';"
                                   onmouseover="this.style.borderColor='#9ca3af';"
                                   onmouseout="this.style.borderColor='#d1d5db';">
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 0.75rem;"></td>
                        <td style="padding: 0.75rem;">
                            <input type="submit" value="EDIT CUSTOMER" 
                                   style="width: 100%; padding: 0.75rem; font-size: 1rem; font-weight: 600; color: #ffffff; background-color: #10b981; border: none; border-radius: 8px; cursor: pointer; transition: background-color 0.3s ease, transform 0.2s ease;"
                                   onmouseover="this.style.backgroundColor='#059669'; this.style.transform='translateY(-2px);'"
                                   onmouseout="this.style.backgroundColor='#10b981'; this.style.transform='translateY(0);'"
                                   onfocus="this.style.boxShadow='0 0 0 3px rgba(16, 185, 129, 0.3);'"
                                   onblur="this.style.boxShadow='none';">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
