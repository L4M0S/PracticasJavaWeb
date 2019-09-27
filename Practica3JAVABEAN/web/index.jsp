<%-- 
    Document   : index
    Created on : 20/09/2019, 10:52:06 AM
    Author     : Errata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form method="POST" action="ProductoController">
                
                <table border="5px" bordercolor=“#000000”>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                </tr>
                <tr>
                	<td>111</td>
                	<td>Motor</td>
                	<td>50</td>
                	<td><input type="number" name="canM"></td>
                </tr>
                <tr>
                	<td>222</td>
                	<td>Aceite</td>
                	<td>30</td>
                	<td><input type="number" name="canA"></td>
                </tr>
                <tr>
                	<td>333</td>
                	<td>Filtro de aire</td>
                	<td>40</td>
                	<td><input type="number" name="canF"></td>
                </tr>
            </table>
                <input type="submit">
            </form>
        </div>
    </body>
</html>
