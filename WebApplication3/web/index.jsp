<%-- 
    Document   : index
    Created on : 6/09/2019, 10:54:32 AM
    Author     : lamos
<jsp:setProperty name="Bean" property="id" value="12345" />
id: <jsp:getProperty name="Bean" property="id" />
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page language="java" %>
<%@ page import="datos.articulo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="Bean" class="datos.articulo" scope="session">
        <%-- intialize bean properties --%>
        
    </jsp:useBean>
        
        
        
        <form action="guardar.jsp" method="post">
            id:
            <input type="text" name="id">
            <br/>
            nombre:
            <input type="text" name="nombre">
            <br/>
            descripcion:
            <input type="text" name="descripcion">
            <br/>
            cantidad:
            <input type="text" name="cantidad">
            <br/>
            precio:
            <input type="text" name="precio">

            <p><input type="submit" value="Calcular"></p>
        </form>
        
        
        
    </body>
</html>
