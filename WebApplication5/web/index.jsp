
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="Bean" class="datos.bean" scope="session">
        <%-- intialize bean properties --%>
        
    </jsp:useBean>
        <form action="imprimir" method="post">
            
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
                	<td><input type="number" name="CantidadMotor"></td>
                </tr>
                <tr>
                	<td>222</td>
                	<td>Aceite</td>
                	<td>30</td>
                	<td><input type="number" name="CantidadAceite"></td>
                </tr>
                <tr>
                	<td>333</td>
                	<td>Filtro de aire</td>
                	<td>40</td>
                	<td><input type="number" name="CantidadFiltro"></td>
                </tr>
            </table>
            
            <p><input type="submit" value="Calcular"></p>
        </form>
    </body>
</html>


<table cellspacing="3" cellpadding="3" border="1">
                    <tr style="font-weight: bold; background-color: cyan; text-align: center;">
                        <td>CODIGO</td>
                        <td>PRODUCTO</td>
                        <td>PRECIO</td>
                        <td>CANTIDAD</td>
                    </tr>
                    <tr>
                        <td><label><input style="display: none;" name="codM" value="111">111</label></td>
                        <td><label><input style="display: none;" name="proM" value="Motor">Motor</label></td>
                        <td><label><input style="display: none;" name="preM" value="50">50</label></td>
                        <td><input type="number" name="canM" min="0"></td>
                    </tr>
                    <tr>
                        <td><label><input style="display: none;"  name="codA" value="222">222</label></td>
                        <td><label><input style="display: none;" name="proA" value="Aceite">Aceite</label></td>
                        <td><label><input style="display: none;" name="preA" value="30">30</label></td>
                        <td><input name="canA" type="number" min="0"></td>
                    </tr>
                    <tr>
                        <td><label><input style="display: none;"  name="codF" value="333">333</label></td>
                        <td><label><input style="display: none;" name="proF" value="Filtro de aire">Filtro de aire</label></td>
                        <td><label><input style="display: none;" name="preF" value="40">40</label></td>
                        <td><input name="canF" type="number" min="0"></td>
                    </tr>
                </table>

<h1>Total a pagar</h1>
        <table cellspacing="3" cellpadding="3" border="1">
            <tr style="font-weight: bold; background-color: cyan; text-align: center;">
                <td>CODIGO</td>
                <td>PRODUCTO</td>
                <td>PRECIO</td>
            </tr>
            <%
                ArrayList<ProductoBEAN> list = (ArrayList<ProductoBEAN>) request.getAttribute("lista_productos");
                float total = 0;
                for(ProductoBEAN producto : list) {
            %>
            <tr>
            <%
                if(producto.getCantidad()>0){
                    %>
                    <td>
                    <%
                    out.println(producto.getCodigo());
                    %>
                    </td>
                    <td>
                    <%
                    out.println(producto.getProducto());
                    %>
                    </td>
                    <td>
                    <%
                    total += producto.getPrecio()*1.16*producto.getCantidad();
                    out.println((float)(producto.getPrecio()*1.16*producto.getCantidad()));
                    out.println("</td>");
                }
                    %>
            </tr>
            <%
                }
            %>
            <tr>
                <td colspan="2">Total: </td>
                <td><%out.println(total);%></td>
            </tr>
        </table>
    </body>