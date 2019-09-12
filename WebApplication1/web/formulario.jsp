<%-- 
    Document   : formulario
    Created on : 30/08/2019, 04:54:22 PM
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
        <%@ page import="calculos.calculo" %>
        <% 
            /*podemos leer los datos del request a una variable*/
            String salario=(String)request.getParameter("salario");
            String dias=(String)request.getParameter("dias");
            double total=calculo.total(salario,dias);
            out.print("tu nombre es: "+request.getParameter("nombre"));
            out.print("<br/>");
            out.print("tu sueldo total fue: "+total);
         %>
    </body>
</html>
