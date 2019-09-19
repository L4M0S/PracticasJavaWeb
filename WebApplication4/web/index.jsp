<%-- 
    Document   : index
    Created on : 11/09/2019, 07:15:29 PM
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
        <form action="datos" method="post">
            cuadrado:
            <input type="radio" name="figura" value="cuadrado">
            <br/>
            rectangulo:
            <input type="radio" name="figura" value="rectangulo">
            <br/>
            triangulo:
            <input type="radio" name="figura" value="triangulo">
            <br/><br/>
            area:
            <input type="checkbox" name="area">
            <br/>
            perimetro:
            <input type="checkbox" name="perimetro">
            <br/><br/><br/>
            base:
            <input type="text" name="base">
            <br/>
            altura:
            <input type="text" name="base">
            <br/>

            <p><input type="submit" value="Calcular"></p>
        </form>
    </body>
</html>
