<%-- 
    Document   : remove_customer
    Created on : 12 May 2025, 5:27:27 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Customer Page</title>
    </head>
    <body>
        <h1>Remove Customer</h1>
        <form action="RemoveCustomerServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REMOVE"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
