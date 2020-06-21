<%-- 
    Document   : formularioContraseña
    Created on : 19 jun. 2020, 18:05:25
    Author     : marav
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int id;
id=Integer.parseInt(request.getParameter("id"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Contraseña</title>
    </head>
     <body>
        
        <div class="container">
        <form action="editarContraseña.jsp" method="GET">
            <div class="form-row">
                <h6>Ingrese su actual contarseña</h6><          
                <input type="hidden" class="form-control" name="id" value="<%=id%>"</>                            
                 
                <br>
                <input type="password" class="form-control" placeholder="Contraseña" name="password" required/>
                
                <br>
                <h6>Ingrese la nueva contraseña</h6>
                <input type="password" class="form-control" placeholder="Contraseña" name="c1" required/>
                <br>
                <h6>Vuelva a Ingrese la nueva contraseña</h6>
                <input type="password" class="form-control" placeholder="Contraseña" name="c2" required/>
            
                <div>
                    <input type="submit" class="btn btn-success btn-block" value="enviar" />
                </div>    
            </div>
        </form>          
        </div>        
    </body>
</html>
