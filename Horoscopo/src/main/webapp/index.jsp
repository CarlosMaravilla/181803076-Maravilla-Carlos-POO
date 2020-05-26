<%-- 
    Document   : index
    Created on : 23 may. 2020, 22:54:20
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
        <h1>Horoscopo</h1>
        <%
          boolean a =false;
          
          
          if(request.getParameter("numero")!=null || request.getParameter("respuesta")=="false"){
             
                a=true;
            }
                   
          
               
          if(a == true  ){
          int n=0;
          int dia = Integer.parseInt(request.getParameter("numero"));
          String mes = request.getParameter("mes");
          
          %>
          <h1>Tu horoscopo es: </h1>  
          
          <%
          mes=mes.toLowerCase();
          
          if(mes.equals("enero")){
               n=1;
              }  
          if(mes.equals("febrero")){
               n=2;
              }     
          if(mes.equals("marzo")){
               n=3;
              }  
          if(mes.equals("abril")){
               n=4;
              }  
          if(mes.equals("mayo")){
               n=5;
              }
          if(mes.equals("junio")){
               n=6;
              }
          if(mes.equals("julio")){
               n=7;
              }      
          if(mes.equals("agosto")){
               n=8;
              }  
          if(mes.equals("septiembre")){
               n=9;
              }  
          if(mes.equals("octubre")){
               n=10;
              }  
          if(mes.equals("noviembre")){
               n=11;
              }       
          if(mes.equals("diciembre")){
               n=12;
              }
           
          switch(n){
            case 1:
                if(dia>=1 && dia<=20){
                    out.println("Capricornio");
                } 
                else{
                    if(dia>=21 && dia<=31){
                        out.println("acuario");
                    }else{
                        out.println("error en el dia ");
                    }
                    
                }
                break;
            case 2:
                if(dia>=1 && dia<=19){
                    out.println("acuario");
                }else{
                    if(dia>=20 && dia<=28){
                        out.println("piscis");
                    }
                    else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case  3:
                if(dia>=1 && dia<=20){
                    out.println("piscis");
                }else{
                    if(dia>=21 && dia<=31){
                        out.println("aries");
                    }else{
                        out.println("error en el dia ");
                    }
                    
                }
                break;
            case  4:
                if(dia>=1 && dia<=20){
                    out.println("aries");
                }else{
                    if(dia>=21 && dia<=30){
                        out.println("tauro");
                    }
                    else{
                        out.println("error en el dia ");
                    }
                   
                }
                break;
            case  5:
                   if(dia>=1 && dia<=21){
                       out.println("tauro");
                   }
                   else{
                       if(dia>=22 && dia<=31){
                           out.println("Gaminis");
                       }else{
                           out.println("error en el dia ");
                       }
                   }
                 break;
            case  6:
                  if(dia>=1 && dia<=22){
                      out.println("Geminis");
                  }else{
                      if(dia>=23 && dia<=30){
                          out.println("cancer");
                      }else{
                          out.println("error en el dia ");
                      }
                  }
                  break;
            case   7:
                if(dia>=1 && dia<=23){
                    out.println("cancer");
                }else{
                    if(dia>=24 && dia<=31){
                        out.println("leo");
                    }else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case   8:
                if(dia>=1 && dia<=23){
                    out.println("leo");
                }else{
                    if(dia>=24 && dia<=31){
                        out.println("virgo");
                    }else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case   9:
                if(dia>=1 && dia<=23){
                    out.println("virgo");
                }else{
                    if(dia>=24 && dia<=30){
                        out.println("libra");
                    }else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case    10:
                if(dia>=1 && dia<=23){
                    out.println("libra");
                }else{
                    if(dia>=24 && dia<=31){
                        out.println("Escorpion");
                    }else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case    11:
                if(dia>=1 && dia<=22){
                    out.println("Escorpion");
                }else{
                    if(dia>=23 && dia<=30){
                        out.println("Sagitario");
                    }else{
                        out.println("error en el dia ");
                    }
                }
                break;
            case   12:
                if(dia>=1 && dia<=21){
                    out.println("sagitario");
                }else{
                    if(dia>=22 && dia<=31){
                        out.println("capricornio");
                    }else{
                        out.println("error en el dia ");
                    }
                    
                }
                break;
            default:
                out.println("Error en el mes ");
                break;
                    
          
        }  

          
          %>
            <form>
            <input type="hidden" name="respuesta" value="true" />
            <input type="submit" value="Regresar"/>
            </form>  
        
            
            <%}else{%>
            <form>
            <p style = "font-family:arial;">Dia </p>
            <br>    
            <input type="number" name="numero" required/><br>
            <p style = "font-family:arial;">Mes </p>
            <br>
            <input type="test" name="mes" required/><br>
            
            <input type="submit" value="enviar"/>
            </form>
            <p style = "font-family:arial;">No has ingresado ningun dato</p>
            
            <%}%>
        
    </body>
</html>
