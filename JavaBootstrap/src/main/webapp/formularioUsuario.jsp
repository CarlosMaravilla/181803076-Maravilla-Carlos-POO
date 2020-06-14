

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario Usuario</title>
    </head>
    <body>
        <h1>Agregar un nuevo Usuario</h1>
        <form action="agregarUsuario.jsp" method="POST">
            <div class="form-row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="Nombre" name="usuario" required/>
                </div>
                <div class="col">
                    <input type="password" class="form-control" placeholder="Contraseña" name="password" required/>
                </div>
                <div class="col">
                    <input type="submit" class="btn btn-success btn-block" value="enviar" />
                </div>    
            </div>            
        </form>           
    </body>
</html>
