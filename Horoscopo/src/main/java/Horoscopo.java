
import java.util.Scanner;


public class Horoscopo {
    public static void main(String[]args){
     Scanner leer = new Scanner(System.in);
        
     String mes;
     int dia;
     
        System.out.println("Ingrese el mes de su nacimiento");
        mes =leer.nextLine();
        System.out.println("Ingrese el dia de su nacimiento");
        dia =leer.nextInt();
        
        
        switch(mes.toLowerCase()){
            case "enero":
                if(dia<=1 && dia>=20){
                    System.out.println("Capricornio");
                } 
                else{
                    if(dia<=31){
                        System.out.println("acuario");
                    }else{
                        System.out.println("error en el dia ");
                    }
                    
                }
                break;
            case "febrero":
                if(dia>=1 && dia<=19){
                    System.out.println("acuario");
                }else{
                    if(dia>=20 && dia<=28){
                        System.out.println("piscis");
                    }
                    else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case  "marzo":
                if(dia>=1 && dia<=20){
                    System.out.println("piscis");
                }else{
                    if(dia>=21 && dia<=31){
                        System.out.println("aries");
                    }else{
                        System.out.println("error en el dia ");
                    }
                    
                }
                break;
            case  "abril":
                if(dia>=1 && dia<=20){
                    System.out.println("aries");
                }else{
                    if(dia>=21 && dia>=30){
                        System.out.println("tauro");
                    }
                    else{
                        System.out.println("error en el dia ");
                    }
                   
                }
                break;
            case  "mayo":
                   if(dia>=1 && dia<=21){
                       System.out.println("tauro");
                   }
                   else{
                       if(dia<21 && dia<=31){
                           System.out.println("Gaminis");
                       }else{
                           System.out.println("error en el dia ");
                       }
                   }
                 break;
            case  "junio":
                  if(dia>=1 && dia<=21){
                      System.out.println("Geminis");
                  }else{
                      if(dia>=22 && dia<=30){
                          System.out.println("cancer");
                      }else{
                          System.out.println("error en el dia ");
                      }
                  }
                  break;
            case   "julio":
                if(dia>=1 && dia<=23){
                    System.out.println("cancer");
                }else{
                    if(dia>=24 && dia<=31){
                        System.out.println("leo");
                    }else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case   "agosto":
                if(dia>=1 && dia<=23){
                    System.out.println("leo");
                }else{
                    if(dia>=24 && dia<=31){
                        System.out.println("virgo");
                    }else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case   "septiembre":
                if(dia>=1 && dia<=23){
                    System.out.println("virgo");
                }else{
                    if(dia>=24 && dia<=30){
                        System.out.println("libra");
                    }else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case    "actubre":
                if(dia>=1 && dia<=23){
                    System.out.println("libra");
                }else{
                    if(dia>=24 && dia<=31){
                        System.out.println("Escorpion");
                    }else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case    "noviembre":
                if(dia>=1 && dia<=22){
                    System.out.println("Escorpion");
                }else{
                    if(dia>=23 && dia<=30){
                        System.out.println("Sagitario");
                    }else{
                        System.out.println("error en el dia ");
                    }
                }
                break;
            case "diciembre":
                if(dia>=1 && dia<=21){
                    System.out.println("sagitario");
                }else{
                    if(dia>=22 && dia<=31){
                        System.out.println("capricornio");
                    }else{
                        System.out.println("error en el dia ");
                    }
                    
                }
                break;
            default:
                System.out.println("Error en el mes ");
                break;
                    
          
        }
        
        
     
     
     
    }
    
}
