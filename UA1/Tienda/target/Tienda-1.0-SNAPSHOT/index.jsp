<%-- 
    Document   : index
    Created on : 3 jun. 2020, 20:30:21
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%
    Connection conexion=null;
    Statement stmt=null;
    ResultSet rs=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/tienda", "root","");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("SELECT productos.Id_producto, productos.Nombre_Producto, productos.Precio, productos.Descripcion, productos.Cantidad_Producto, ca_departamentos.departamento FROM productos JOIN ca_departamentos on productos.id_departamento = ca_departamentos.id_departamento");
                
        
    }catch(Exception e){
        out.println("Error: "+e);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table, th, td {
                 border: 3px solid black;
                 border-collapse: collapse;
                 }
        blockquote { 
                display: block;
                margin-top: 1em;
                margin-bottom: 1em;
                margin-left: 50px;
                margin-right: 50px;
                }
        </style>
    </head>
    <body>
        <h1 align="center"><font color="BlackDimgray">CRUD Productos De Una Tienda</font></h1><br><br>
        
        <h2><font face="Arial">Tabla de Productos</font></h2>
        
        
        <table style="width:100%">
        <tr>
        <th bgcolor="blue"><font color="WHITE">ID del Producto</font></th>
        <th bgcolor="blue"><font color="WHITE">Nombre del Producto</font></th>
        <th bgcolor="blue"><font color="WHITE">Precio</font></th>
        <th bgcolor="blue"><font color="WHITE">Descripcion</font></th>
        <th bgcolor="blue"><font color="WHITE">Cantidad de Producto</font></th>
        <th bgcolor="blue"><font color="WHITE">Departamentos</font></th>
        </tr>
        <%while(rs.next()){%>
        <tr>
        <td align="center" bgcolor="LIME"><%out.println(rs.getString(1));%></td>
        <td align="center" bgcolor="Springgreen"><%out.println(rs.getString(2));%></td>
        <td align="center" bgcolor="Lavendar"><%out.println(rs.getString(3));%></td>
        <td align="center" bgcolor="Lightgreen"><%out.println(rs.getString(4));%></td>
        <td align="center" bgcolor="Seagreen"><font color="WHITE"><%out.println(rs.getString(5));%></font></td>
        <td align="center" bgcolor="redgreenblack"><%out.println(rs.getString(6));%></td>
        </tr>
        <%}%>
    </body>
</html>
