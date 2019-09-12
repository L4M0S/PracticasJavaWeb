<%-- 
    Document   : index
    Created on : 30/08/2019, 05:28:58 PM
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
            <img src="imagen.jpg">
            <br/>
            a:
            <input type="text" name="a">
            <br/>
            b:
            <input type="text" name="b">
            <br/>
            c:
            <input type="text" name="c">

            <p><input type="submit" value="Enviar"></p>
        </form>
    </body>
</html>
