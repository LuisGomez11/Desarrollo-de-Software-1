<%-- 
    Document   : eliminar
    Created on : 22/03/2019, 01:04:50 PM
    Author     : Luis Alberto Gomez
--%>

<%@page import="Config.Opciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Opciones.Eliminar(id);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
