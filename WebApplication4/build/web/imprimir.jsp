<%-- 
    Document   : imprimir
    Created on : 11/09/2019, 07:16:44 PM
    Author     : lamos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <%@ page import="datos.datos" %>
        <% 
            /*podemos leer los datos del request a una variable*/
            int figura=Integer.parseInt(request.getParameter("figura"));
            String area=(String)request.getParameter("area");
            String perimetro=(String)request.getParameter("perimetro");
            int base=Integer.parseInt(request.getParameter("base"));
            int altura=Integer.parseInt(request.getParameter("altura"));            
            
            out.print("figura: ");
            if(figura==1)out.print("cuadrado");
            if(figura==2)out.print("rectangulo");
            if(figura==3)out.print("triangulo");
            out.print("<br>");
            //if(figura=="triangulo"){out.print("122322");out.print("<br>");}
            out.print("area: ");
            if(area!=null)out.print("si");
            else out.print("no");
            out.print("<br>");
            out.print("perimetro: ");
            if(perimetro!=null)out.print("si");
            else out.print("no");
            out.print("<br>");
          
            out.print("base: ");out.print(base);
            out.print("<br>");
            out.print("altura: ");out.print(altura);
            out.print("<br>");
            
            if(area!=null){
                if(figura==1){
                    double carea= base*altura;
                    out.print("area= "+ carea);
                    out.print("<br>");
                }
                if(figura==2){
                    double carea= base*altura;
                    out.print("area= "+ carea);
                    out.print("<br>");
                }
                if(figura==3){
                    double carea= (base*altura)/2;
                    out.print("area= "+ carea);
                    out.print("<br>");
                }
            }
            
            if(perimetro!=null){
                if(figura==1){
                    double cperi= base*4;
                    out.print("perimetro= "+ cperi);
                    out.print("<br>");
                }
                if(figura==2){
                    double cperi= (base*2)+(altura*2);
                    out.print("perimetro= "+ cperi);
                    out.print("<br>");
                }
                if(figura==3){
                    double cperi= base*3;
                    out.print("perimetro= "+ cperi);
                    out.print("<br>");
                }
            }
         %>
    </body>
</html>
