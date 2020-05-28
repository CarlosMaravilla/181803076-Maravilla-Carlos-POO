<%-- 
    Document   : solicita
    Created on : 27 may. 2020, 8:27:24
    Author     : marav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int numero =Integer.parseInt(request.getParameter("numero"));
   int x =Integer.parseInt(request.getParameter("x"));
   
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar los numeros</title>
    </head>
    <body>
        
        <form>
            <%
              if(x != 0 ){%>
              <h1>Ingresa un total de:<%out.println(numero);%></h1>
              <% for(int i=0;i<numero;i++){%>
              
              <input type="number" name="valor<%=i%>" required />
              
            <%}%>         
            <input type="hidden" value="<%=numero%>" name="numero"/>
            <input type="hidden" value="0" name="x"/>
            <input type="submit" value="envianding dato"/>
            <%}else{%>
            <h1>Los numeros ingresdos son:</h1> 
            <%
                
             for(int i=0;i<numero;i++){%>
               
             <br> 
               <%out.print(request.getParameter("valor"+i));
                %>
                
                
            <%}}%>
        
        
        
        </form>
            

    </body>
</html>
