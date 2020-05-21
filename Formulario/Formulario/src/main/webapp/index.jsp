<%-- 
    Document   : index
    Created on : 20 may. 2020, 16:54:44
    Author     : marav
--%>

<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        
        <h1>Ingrese un numero</h1>
        
        
        <form method="POST">
        <input type="number" name="numero" />
        <input type="submit"value="Ingresar"/>
        </form>
       
        
        
       <% 
         try {
              int n = Integer.parseInt(request.getParameter("numero"));
              
              for(int i=0;i<n+1;i++)
            {
            
            out.println(i);
            }

             } 
         catch(NumberFormatException nfe) {
             
	       out.println("Solo se reciben datos enteros");
             }   
       %>
               
            
       
                    
        
    </body>
</html>
