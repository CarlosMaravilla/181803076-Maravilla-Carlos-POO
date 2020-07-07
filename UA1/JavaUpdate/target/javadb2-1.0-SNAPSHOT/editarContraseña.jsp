<%-- 
    Document   : editarContraseña
    Created on : 19 jun. 2020, 18:59:52
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String actual="";
    int id;
    id=Integer.parseInt(request.getParameter("id"));
    String password=request.getParameter("password");     
    boolean con =true; 
    String c1=request.getParameter("c1");
    String c2=request.getParameter("c2");
    
    if(c1.equals(c2)){
     con = false;
    }else{%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Contraseña</title>
    </head>
    <body>
        <p style = "font-family:Arial" class="alert alert-danger" align="center" ><font SIZE=9>No coincide la nueva contraseña</font></p>
        <div style="text-align: center">  
        <a align="center" class="btn btn-success" href="formularioContraseña.jsp?id=<%=id%>" align="center">Volver a intentar</a>    
        <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
        </div>
  

    <%}%>
    
<%
if(con==false){

    try{
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt = conexion.prepareStatement("SELECT * FROM `usuario` WHERE `password`=MD5(?)");
        stmt.setString(1,password);
        rs = stmt.executeQuery();
       
    
    if(rs.next()==true){
    
 
      try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root","");
            stmt = conexion.prepareStatement("UPDATE usuario SET `password`=MD5(?) WHERE `id usuario`=?");
            stmt.setString(1, request.getParameter("c1"));
            stmt.setInt(2, Integer.parseInt(request.getParameter("id")));
            stmt.executeUpdate();
      
         %>
         
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <p style = "font-family:Arial" class="alert alert-success" align="center" ><font SIZE=9>Contraseña modificada correctamente</font></p>
    <div style="text-align: center">     
     <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
             
         
        <%
         
        }catch(Exception e){
         out.print("falla en la modifiacion");
         out.print(e.getMessage());
         
         }
      
      
      
    }else{%>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
        <p style = "font-family:Arial" class="alert alert-danger" align="center" ><font SIZE=9>No hay coincidencia con su actual contraseña</font></p>
        <div style="text-align: center">  
        <a align="center" class="btn btn-success" href="formularioContraseña.jsp?id=<%=id%>" align="center">Volver a intentar</a>    
        <a align="center" class="btn btn-info" href="index.jsp" align="center">Volver al inicio</a>
        </div>
    </body>
</html>    
<% } %>
    
    <%}catch(Exception e){%>
     
        <% out.print(e.getMessage());%>      
     <%}
}%>    
 
