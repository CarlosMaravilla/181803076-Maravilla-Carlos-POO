<%@page import="java.sql.*"%>
<%
   int id=Integer.parseInt(request.getParameter("id"));
  
    Connection conexion=null;
    PreparedStatement stmt=null;
    ResultSet rs=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt=conexion.prepareStatement("DELETE FROM `usuario` WHERE `usuario`.`id usuario` ="+id+"");
        stmt.executeUpdate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eleminar version 2</title>
        
        <% response.sendRedirect("index.jsp"); %>
    </head>
    <body>
        
       
    </body>
</html>

<%}catch(Exception e){

out.print(e.getMessage());

}%>