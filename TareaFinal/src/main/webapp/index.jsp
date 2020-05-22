<%-- 
    Document   : index
    Created on : 22 may. 2020, 8:34:29
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
        <h1>El programa que debio ser y no fue(Sin TRY,SIN JAVASCRIPT,SIN PROBLEMAS DE GLASFISH)</h1>
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          int numero = Integer.parseInt(request.getParameter("numero"));%>
          <h1>El ciclo del valor ingresado es </h1>  
          
          <%for(int i=0;i<numero+1;i++){
                     
                     out.println(i ); 
            }%>
            <form>
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <input type="number" name="numero" required/>
            <input type="submit" value="enviar"/>
            </form>
            <h1>No has ingresado ningun numero  </h1>
            <%}%>
        
        
            

        
    </body>
</html>
