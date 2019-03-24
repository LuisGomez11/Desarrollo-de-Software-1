
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Clases.Conexion"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : index
    Created on : 21/03/2019, 11:50:04 PM
    Author     : Luis Alberto Gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="mt-3">PARCIAL I DESARROLLO DE SOFTWARE</h1>
            <hr>
            <div class="formRegistro">
                <form method="POST" action="miServlet?opc=agregar" autocomplete="off">
                    <label>ID:</label>
                    <div class="form-group">
                        <input type="number" class="form-control" minlength="5" maxlength="5" id="id" name="ide" placeholder="Ingrese ID ..." required>
                    </div>
                    <label>Nombre:</label>
                    <div class="form-group">
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese Nombre ..." required>
                    </div>
                    <label>Apellido:</label>
                    <div class="form-group">
                        <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Ingrese Apellido ..." required>
                    </div>
                    <label>Fecha de cumpleaños</label>
                    <div class="form-group">
                        <input type="date" class="form-control" id="fecha" name="fecha" placeholder="Ingrese Fecha de cumpleaños ..." required>
                    </div>
                    <input type="submit" class="btn btn-info btn-block" id="boton" value="AGREGAR">
                </form>
            </div>
            <%
                Connection connect = Conexion.connect();
                PreparedStatement ps = connect.prepareStatement("select * from registros");
                ResultSet rs = ps.executeQuery();

            %>
            <div class="formTabla mb-4">
                <table class="table table-bordered table-striped">
                    <tr>
                        <th colspan="5" class="text-center">LISTADO DE USUARIOS</th>
                    </tr>
                    <tr>
                        <th class="text-center">ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th class="text-center">Fecha cumpleaños</th>
                        <th class="text-center">Acciones</th>
                    </tr>
                    <%                    while (rs.next()) {
                    %>
                    <tr>
                        <td class="text-center"><%= rs.getInt("id")%></td>
                        <td><%= rs.getString("name")%></td>
                        <td><%= rs.getString("lastname")%></td>
                        <td class="text-center"><%= rs.getString("birthday")%></td>
                        <td class="text-center">
                            <a href="modificar.jsp?id=<%= rs.getInt("id")%>" class="btn btn-warning btn-sm">Modificar</a>
                            <a href="eliminar.jsp?id=<%= rs.getInt("id")%>" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
                    </tr>
                    <% }%>
                </table>
            </div>
        </div>
    </body>
</html>
