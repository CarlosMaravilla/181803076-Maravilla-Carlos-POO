<%-- 
    Document   : index
    Created on : 23 may. 2020, 22:33:25
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
        <h1>Numero par o impar</h1>
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          int numero = Integer.parseInt(request.getParameter("numero"));%>
          <h1>Respuesta</h1>  
          
          <%
            if(numero%2==0){
              out.println("El numero "+numero+" es par ");
              }else{
              
              out.println("El numero "+numero+" es impar ");
              }
                      
          
          
          %>
            <form>
            <br>    
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <input type="number" name="numero" required/>
            <input type="submit" value="enviar"/>
            </form>
            <p style = "font-family:arial;">No has ingresado ningun numero </p>
            <%}%>
        
    </body>
</html>
