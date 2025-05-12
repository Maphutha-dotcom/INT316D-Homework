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
    <body>
        <h1>Edit Customer</h1>
        <p>
            Please enter the details of the person to edit.
        </p>
        <form action="EditCustomerServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr> 
                <tr>
                    <td></td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="EDIT CUSTOMER"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
