<%-- 
    Document   : add_person
    Created on : 11 May 2025, 5:58:06 PM
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
        <h1>Add Customer</h1>
        <p>
            Please add customer details below:
        </p>
        <form action="AddCustomerServlet.do" method="POST">
            <table>
                <tr>
                    <td>Customer's Name:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Product Name:</td>
                    <td><input type="text" name="pName"/></td>
                </tr>
                <tr>
                    <td>Quantity: </td>
                    <td><input type="text" name="quantity"/></td>
                </tr> 
                <tr>
                    <td>Unit Price:</td>
                    <td><input type="text" name="unitPrice"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD CUSTOMER"/></td>
                </tr>
            </table>
        </form> 
    </body>
</html>
