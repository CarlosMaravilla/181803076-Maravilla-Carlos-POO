<%-- 
    Document   : index
    Created on : 20 may. 2020, 9:15:26
    Author     : marav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi primer formulario</title>
    </head>
    <body>
        <h1>Mi primer formulario</h1>
        <p>este es mi primer formulario en donde conocere la diferencia entre POST<b y GET</b></p>
        <form method="POST"><input type="text" name="Minombre"/>
            <input type="password" name="contra"/>
            <input type="date" name="fechanacimiento"/>
            <input type="submit"value="Enviar"/>
            
                </form>
        <h1>Los datos ingresados son:</h1>
        <%
            out.println(request.getParameter("Minombre"));
            out.println(request.getParameter("password"));
            out.println(request.getParameter("contra"));
            out.println(request.getParameter("fechanacimiento"));
            %>
        
    </body>
</html>
