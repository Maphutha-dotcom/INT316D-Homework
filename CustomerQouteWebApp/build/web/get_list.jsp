<%-- 
    Document   : get_list
    Created on : 12 May 2025, 5:16:34 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Page</title>
    </head>
    <body>
        <h1>Get List of customers</h1>
        <form action="GetListServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET LIST"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
