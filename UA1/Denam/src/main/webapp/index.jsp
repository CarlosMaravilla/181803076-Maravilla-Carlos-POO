<%-- 
    Document   : index
    Created on : 24 may. 2020, 14:41:08
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
      <h1>De N a M </h1>
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          int numero = Integer.parseInt(request.getParameter("numero"));
          int numero1 = Integer.parseInt(request.getParameter("numero1"));%>
          <h1>Serie</h1>  
          
          <%
            if(numero < numero1){
               for(int i=numero;i<numero1+1;i++){
                out.println(i);
              }
            
              }else{
              out.println("N tiene que ser menor que   M");
              }
          
          
          
          %>
            <form>
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <p style = "font-family:arial;">Ingrese N </p> 
            <br>
            <input type="number" name="numero" required/><br>
            <p style = "font-family:arial;">Ingrese M </p> 
            <br>
            <input type="number" name="numero1" required/><br>
            
            <input type="submit" value="enviar"/>
            <p style = "font-family:arial;">no has ingresado un numero</p> 
            
            </form>
            
            <%}%>
        
        
            
    </body>
</html>
