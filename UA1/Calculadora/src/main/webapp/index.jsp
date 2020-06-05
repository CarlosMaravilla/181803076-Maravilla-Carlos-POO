<%-- 
    Document   : index
    Created on : 23 may. 2020, 21:14:46
    Author     : marav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
       <h1>Calculadora</h1>
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          double resultado;
          double numero =Double.parseDouble(request.getParameter("numero"));
          double numero1 =Double.parseDouble(request.getParameter("numero1"));%>
          <h1>Los resultados son </h1>  
          <p style = "font-family:courier;">SUMA</p>
          <%out.println(numero+" + "+numero1+" = "+(numero+numero1));%>
            <br><br> 
          <p style = "font-family:courier;">RESTA</p>  
          <% out.println(numero+" - "+numero1+" = "+(numero-numero1));%>
            <br><br>
          <p style = "font-family:courier;">MULTIPLICACION</p>      
          <% out.println(numero+" x "+numero1+" = "+(numero*numero1));%>
            <br><br> 
          <p style = "font-family:courier;">DIVISION</p>      
          <% out.println(numero+" / "+numero1+" = "+(numero/numero1));%>
            <form>
            <br>    
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <input type="number" name="numero" required/><br>
            <input type="number" name="numero1" required/><br>
            <input type="submit" value="enviar"/>
            </form>
            <p style = "font-family:arial;">No has ingresado ningun numero </p>
            <%}%>
        
 
        
    </body>
</html>
