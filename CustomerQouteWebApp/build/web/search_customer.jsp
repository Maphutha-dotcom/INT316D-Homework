<%-- 
    Document   : search_customer
    Created on : 12 May 2025, 5:12:54 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search customer Page</title>
    </head>
    <body>
        <h1>Search Customer</h1>
        <p>
            Please enter the ID of the person to search for.
        </p>
        <form action="SearchCustomerServlet.do" method="POST">
            <table>
                <tr>
                    <td>ID: </td>
                    <td><input type="text" name="id"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
