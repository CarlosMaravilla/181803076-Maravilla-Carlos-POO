  
<%-- 
    Document   : index
    Created on : 3 jun. 2020, 20:30:21
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%
    try{
    Connection conexion=null;
    Statement stmt=null;
    ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/tienda", "root","");
        stmt = conexion.createStatement();
        rs = stmt.executeQuery("select * from productos");
  
%>
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
        </table>
        <br><br>
        <h2><font face="Arial">Tabla de Departamentos</font></h2>
        <table style="width:100%">
        <%rs = stmt.executeQuery("select * from ca_departamentos");%>    
        <tr>
        <th bgcolor="blue"><font color="WHITE">ID del Departamento</font></th>
        <th bgcolor="blue"><font color="WHITE">Departamento</font></th>
        </tr>
        <%while(rs.next()){%>
        <tr>
        <td align="center" bgcolor="LIME"><%out.println(rs.getString(1));%></td>
        <td align="center" bgcolor="Springgreen"><%out.println(rs.getString(2));%></td>
        </tr>
        <%}%>
        </table>    
            
    <%}catch(SQLException e ){
        if(String.valueOf(e.getSQLState()).equalsIgnoreCase("42000")){
           out.println("Error SQL: la base de datos no existe");
        }else{
            if(String.valueOf(e.getSQLState()).equalsIgnoreCase("42S02")){
            out.println("Error SQL: la tabla no existe"); 
            }else{
                if(String.valueOf(e.getSQLState()).equalsIgnoreCase("28000")){
                out.println("Error SQL: Acceso denegado para el usuario 'root' @ 'localhost' (usando la contraseña: YES)");
                 }else{
                     if(String.valueOf(e.getSQLState()).equalsIgnoreCase("08S01")){
                     out.println("Error de enlace de comunicaciones El último paquete enviado con éxito al servidor fue hace 0 milisegundos. El controlador no ha recibido ningún paquete del servidor.");
                     }else{
                         if(String.valueOf(e.getSQLState()).equalsIgnoreCase("S1009")){
                         out.println("Índice de columna fuera de rango, 7 > 6"); 
                         }else{
                         out.println(e.getSQLState());
                         out.println("error aun no registrado "+e.getMessage());
                         } 
                     }
                 }
             }
        }
    }
    %>    
       
    </body>
</html>