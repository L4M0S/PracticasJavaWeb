/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



package calculos;


import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
/**
 *
 * @author lamos
 */
public class calculo {
    public static Double primera(String _a, String _b, String _c)
            {
                Double a=Double.parseDouble(_a);
                Double b=Double.parseDouble(_b);
                Double c=Double.parseDouble(_c);
                Double x1=(-b + Math.sqrt((b*b)-(4*a*c)))/(2*a);
                    return   x1;
            }
    
    public static Double segunda(String _a, String _b, String _c)
            {
                Double a=Double.parseDouble(_a);
                Double b=Double.parseDouble(_b);
                Double c=Double.parseDouble(_c);
                Double x2=(-b - Math.sqrt((b*b)-(4*a*c)))/(2*a);
                    return   x2;
            }
    
    public static void guardar(double r1,double r2)
    {
        try {
            String ruta = "C:/Users/lamos/Documents/NetBeansProjects/WebApplication2/datos.txt";
            String contenido ="primera: "+ String.valueOf(r1)+"  Segunda: "+String.valueOf(r2);
            File file = new File(ruta);
            // Si el archivo no existe es creado
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fw = new FileWriter(file);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(contenido);
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
//double x1 = (-b + Math.sqrt((b*b)-(4*a*c)))/(2*a);

//double x2 = (-b - Math.sqrt((b*b)-(4*a*c)))/(2*a);