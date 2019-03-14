
<%@page import="Servlet.MiServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta</title>
        <link href="CSS/estilo.css" rel="stylesheet"/>
    </head>
    <body>

        <%
            String salida = MiServlet.salida;
        %>

        <div class="container">

            <h1><%=salida%></h1>
            <a href="operaciones.html">Volver</a>

        </div>
    </body>
</html>
