<%-- 
    Document   : index
    Created on : 24 may. 2020, 14:22:48
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
         
        <h1>Tabla de Multiplicar de Cualquier numero</h1>
        
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          
          int numero =Integer.parseInt(request.getParameter("numero"));%>
          
          <h1>Tabla de Multiplicar</h1>  
          
          <%
             for(int i=0;i<11;i++){
             out.println(i+" × "+numero+" = "+(i*numero));%>
             
             <br><br>
             
             <%}
          %>
            <form>
            <br>    
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <input type="number" name="numero" required/><br>
            <input type="submit" value="enviar"/>
            </form>
            <p style = "font-family:arial;">No has ingresado ningun numero </p>
            <%}%>
    </body>
</html>
