

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connection conexion=null;
    PreparedStatement stmt=null;
    ResultSet rs=null;
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt = conexion.prepareStatement("Select * from usuario");
        rs = stmt.executeQuery();
 

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Los registros en la base de datos son:</h1><br><br>
        <div class="container">
        <table class="table table-hover thead-dark table-bordered">
            <thead class="thead-dark">
            <tr>
                <td colspan="2"><h2>Usuarios</h2></td>
                <td><a class="btn btn-success btn-block" href="formularioUsuario.jsp">Agregar Usuario</a></td>
            </tr>    
            <tr>
                <th>ID</font></th>
                <th>Nombre</font></th>
                <th>Contraseña</th>
            </tr> 
            </thead>
        <%while(rs.next()){%>
        <tr>
        <td><%=rs.getInt("id usuario")%></td>
        <td><%=rs.getString("usuario")%></td>
        <td><%=rs.getString("password")%></td>
        <td><a class="btn btn-warning btn-block" href="formularioUsuario.jsp?id=<%=rs.getInt("id usuario")%>">Editar el usuario</a></td>
        <td><a class="btn btn-danger btn-block" href="#">Eliminar usuario</a></td>
        
        
        </tr>
        <%}%>
        </table>
        </div>
        <%
        }catch(Exception e){
        out.println("Error: "+e.getMessage());
        }
        %>
        
        
    </body>
</html>