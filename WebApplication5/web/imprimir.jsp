
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="datos.dao" %>
        <% 
            Double CantidadMotor=Double.parseDouble(request.getParameter("CantidadMotor"));
            Double CantidadAceite=Double.parseDouble(request.getParameter("CantidadAceite"));
            Double CantidadFiltro=Double.parseDouble(request.getParameter("CantidadFiltro"));
            
            dao datos= new dao();
            
            datos.setCantidadMotor(CantidadMotor);
            datos.setCantidadAceite(CantidadAceite);
            datos.setCantidadFiltro(CantidadFiltro);
            
            out.print("Motores: "+CantidadMotor + " $"+ CantidadMotor*50);
            out.print("<br>");
            out.print("Aceites: "+CantidadAceite + " $"+ CantidadAceite*30);
            out.print("<br>");
            out.print("Filtros: "+CantidadFiltro + " $"+ CantidadFiltro*40);
            out.print("<br><br>");
            
            out.print("subtotal: "+ datos.getSubTotal());
            out.print("<br>");
            out.print("IVA: "+ datos.getSubTotal()*0.16);
            out.print("<br><br>");
            out.print("total: "+ datos.getTotal());
            out.print("<br>");
         %>
    </body>
</html>
