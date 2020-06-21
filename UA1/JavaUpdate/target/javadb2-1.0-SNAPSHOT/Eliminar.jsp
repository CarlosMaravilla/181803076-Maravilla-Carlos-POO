<%-- 
    Document   : Eliminar
    Created on : 20 jun. 2020, 20:32:53
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
   String usuario="";
   int id=Integer.parseInt(request.getParameter("id"));
   try{
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("SELECT * FROM `usuario` WHERE `id usuario`=?");
        stmt.setInt(1, id);
        rs = stmt.executeQuery();
        rs.next();
        usuario= rs.getString("usuario");
        
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
        <title>Eliminar usuario</title>
    </head>
    <body>
        <p style = "font-family:Arial" class="alert alert-danger" align="center" ><font SIZE=4>Desea eliminar a:</font></p>
        <div style="text-align: center"> 
        <%out.print(usuario);%>
        <br><br>
                <a class="btn btn-success" href="index.jsp">CANCELAR</a>
                <a align="center" class="btn btn-danger" href="eliminarUsuario.jsp?id=<%=id%>" align="center">ELIMINAR</a>    
        </div>
    </body>
</html>

<%}catch(Exception e){

out.print(e.getMessage());

}%>