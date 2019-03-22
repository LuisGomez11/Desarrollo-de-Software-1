<%-- 
    Document   : modificar
    Created on : 22/03/2019, 07:23:33 AM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Clases.Conexion"%>
<%@page import="java.sql.Connection"%>
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
        <%
            Connection connect = Conexion.connect();
            int id = Integer.parseInt(request.getParameter("id"));
            PreparedStatement ps = connect.prepareStatement("select * from registros where id=" + id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

        %>
        <div class="container">
            <h1 class="mt-3">PARCIAL I DESARROLLO DE SOFTWARE</h1>
            <hr>


            <form method="POST" class="mb-4" id="formMod" action="miServlet?opc=modificar" autocomplete="off" style="width: 50%;">
                <center><h3>Modificar usuario</h3></center>
                <label>ID:</label>
                <div class="form-group">
                    <input type="number" class="form-control" readonly id="id" name="ide" placeholder="Ingrese ID ..." value="<%= rs.getInt("id")%>" required>
                </div>
                <label>Nombre:</label>
                <div class="form-group">
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese Nombre ..." value="<%= rs.getString("name")%>" required>
                </div>
                <label>Apellido:</label>
                <div class="form-group">
                    <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Ingrese Apellido ..." value="<%= rs.getString("lastname")%>" required>
                </div>
                <label>Fecha de cumpleaños</label>
                <div class="form-group">
                    <input type="date" class="form-control" id="fecha" name="fecha" value="<%= rs.getString("birthday")%>" required>
                </div>
                <div class="row">
                    <div class="col-6"><input type="submit" class="btn btn-info btn-block" value="MODIFICAR"></div>
                    <div class="col-6"><a href="index.jsp" style="color: #fff;" class="btn btn-info btn-block">VOLVER</a>
                    </div>
            </form>
        </div>
        <% }%>
    </body>
</html>
