
<%@page import="Clase.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
            Contacto con = (Contacto)request.getAttribute("contacto");
        
        %>
        <p>ID: <%= con.getId()%></p>
        <p>Nombre: <%= con.getNombre()%></p>
        <p>Apellidos: <%= con.getApellidos()%></p>
        <p>Lenguaje preferido: <%= con.getPreferido()%></p>
        <p>Hobbies:</p>
        <ul>
        <%
            for(String hob : con.getHobbies()){
        %>
        
        <li><%= hob%></li>
        
        <%}%>
        </ul>
    </body>
</html>
