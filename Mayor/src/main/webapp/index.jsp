<%-- 
    Document   : index
    Created on : 27 may. 2020, 8:12:51
    Author     : marav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Numeros</h1>
    <form action="solicita.jsp">
        <input type="number" name="numero" required/>
        <input type="hidden" name="x" value="1"/>
        <input type="submit" value="Enviar"/>       
    </form>
    
    </body>
</html>
