<%-- 
    Document   : editarUsuario
    Created on : 19 jun. 2020, 13:58:30
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root","");
    stmt = conexion.prepareStatement("UPDATE `usuario` SET `usuario` =? WHERE `usuario`.`id usuario` = ?");
    stmt.setString(1,request.getParameter("usuario"));
    stmt.setInt(2,Integer.parseInt(request.getParameter("id_usuario")));
    stmt.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Editar usuario</title>
    </head>
    <body>
        <p style = "font-family:Arial" class="alert alert-success" align="center" ><font SIZE=9>Usuario editado exitosamente</font></p>
        <div style="text-align: center">
        <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
        </div>     
    </body>
</html>
<%}catch(SQLException e){%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Error</title>
    </head>
    <body>
        <%out.print("ERROR:"+e.getMessage());%>
        <p style = "font-family:Arial" class="alert alert-danger" align="center" ><font SIZE=9>ERROR</font></p>
        <div style="text-align: center">
        <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
        </div>     
    </body>
</html>        
 <%}%>