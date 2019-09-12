<%-- 
    Document   : guardar
    Created on : 11/09/2019, 03:03:47 PM
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
        <%@ page import="datos.articulo" %>
        <% 
            /*podemos leer los datos del request a una variable*/
            String id=(String)request.getParameter("id");
            String nombre=(String)request.getParameter("nombre");
            String descripcion=(String)request.getParameter("descripcion");
            String cantidad=(String)request.getParameter("cantidad");
            String precio=(String)request.getParameter("precio");
            
            articulo.id=id;
            articulo.nombre=nombre;
            articulo.descripcion=descripcion;
            articulo.cantidad=cantidad;
            articulo.precio=precio;
            
            out.print("datos guardados");
            out.print("<br>");
         %>
         <form action="imprimir" method="post">
            <p><input type="submit" value="imprimir"></p>
        </form>
    </body>
</html>
