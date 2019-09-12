<%-- 
    Document   : formulario
    Created on : 30/08/2019, 05:29:09 PM
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
            String a=(String)request.getParameter("a");
            String b=(String)request.getParameter("b");
            String c=(String)request.getParameter("c");
            double primera=calculo.primera(a,b,c);
            double segunda=calculo.segunda(a,b,c);
            out.print("resultados:");
            out.print("<br/>");
            out.print("primera raiz: "+primera);
            out.print("<br/>");
            out.print("segund raiz: "+segunda);
            calculo.guardar(primera,segunda);
         %>
    </body>
</html>
