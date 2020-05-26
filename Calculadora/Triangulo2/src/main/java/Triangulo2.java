import java.util.Scanner;


public class Triangulo2 {
    public static void main(String[]args){
      
        Scanner leer=new Scanner(System.in);  
        int n,e;
        
        System.out.println("Ingrese la longitud del trianfgulo");
        n = leer.nextInt();          
 
        for(int i=0;i<=n;i=i+1)
        {
           e=i;
            for(int j=0;j<i;j++)
            {
                System.out.print(e);
               e=e-1;
            }
            System.out.println();
        }
    }

 }
