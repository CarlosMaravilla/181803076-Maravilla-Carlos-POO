<%-- 
    Document   : edad
    Created on : 20 jun. 2020, 22:31:36
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%
 Connection conexion=null;
 PreparedStatement stmt=null;
 ResultSet rs=null;
 
       try{
          Class.forName("com.mysql.jdbc.Driver");
          conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
          stmt=conexion.prepareStatement("alter table usuario add (  edad int(3) )");
          stmt.executeUpdate();


%>    



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
         <p style = "font-family:Arial" class="alert alert-success" align="center" ><font SIZE=9>Atributo agregado exitosamente</font></p>
        <div style="text-align: center">
        <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
        </div>
    </body>
</html>

<% }catch(Exception e){
          System.out.println(e.getMessage());
       
 }%>