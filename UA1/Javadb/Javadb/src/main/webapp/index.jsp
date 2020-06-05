  
<%-- 
    Document   : index
    Created on : 29/05/2020, 09:01:42 AM
    Author     : Javier García
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection conexion=null;
        Statement stmt=null;
        ResultSet rs=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root","");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("Select * from usuario");
        while(rs.next()){
            out.println(rs.getString(1));
        }
    }catch(Exception e){
        out.println("Error: "+e);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>