<%-- 
    Document   : get_partial_list
    Created on : 12 May 2025, 5:19:35 AM
    Author     : mamab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Partial List Page</title>
    </head>
    <body>
        <h1>Get Partial List</h1>
        <form action="GetPartialListServlet.do" method="POST">
            <table>
                <tr>
                    <td>Start Index:</td>
                    <td><input type="text" name="startIndex"/></td>
                </tr>
                <tr>
                    <td>End Index: </td>
                    <td><input type="text" name="endIndex"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="GET PARTIAL LIST"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
