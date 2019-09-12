<%-- 
    Document   : index
    Created on : 30/08/2019, 04:40:46 PM
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
        <form action="formulario.jsp" method="post">
            Nombre:
            <input type="text" name="nombre">
            <br/>
            Salario:
            <input type="text" name="salario">
            <br/>
            Dias:
            <input type="text" name="dias">

            <p><input type="submit" value="Enviar"></p>
        </form>
    </body>
</html>
