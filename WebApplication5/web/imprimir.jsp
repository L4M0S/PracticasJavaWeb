
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%@ page import="datos.bean" import="datos.dao" import="datos.imprimir"%>
        <% 
            //bean articulo=new bean();
            
            Double CantidadMotor=Double.parseDouble(request.getParameter("CantidadMotor"));
            Double CantidadAceite=Double.parseDouble(request.getParameter("CantidadAceite"));
            Double CantidadFiltro=Double.parseDouble(request.getParameter("CantidadFiltro"));
            Double subTotal=(CantidadMotor*50)+(CantidadAceite*30)+(CantidadFiltro*40);
            Double IVA= (CantidadMotor*50)+(CantidadAceite*30)+(CantidadFiltro*40)*0.16;
            Double Total=subTotal+IVA;
            
            
           
            
            out.print("Motores: "+CantidadMotor + " $"+ CantidadMotor*50);
            out.print("<br>");
            out.print("Aceites: "+CantidadAceite + " $"+ CantidadAceite*30);
            out.print("<br>");
            out.print("Filtros: "+CantidadFiltro + " $"+ CantidadFiltro*40);
            out.print("<br><br>");
            
            out.print("subtotal: "+ subTotal);
            out.print("<br>");
            out.print("IVA: "+IVA) ;
            out.print("<br><br>");
            out.print("total: "+ Total);
            out.print("<br>");
         %>
    </body>
</html>
