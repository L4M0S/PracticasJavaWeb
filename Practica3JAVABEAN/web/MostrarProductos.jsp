<%-- 
    Document   : MostrarProductos
    Created on : 21/09/2019, 05:05:36 PM
    Author     : Errata
--%>

<%@page import="BEAN.ProductoBEAN"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr >
                <td>codigo</td>
                <td>articulo</td>
                <td>precio +iva</td>
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
                
                <td >Total + iva : </td>
                <td><%out.println(total);%></td>
                
            </tr>
        </table>
    </body>
</html>
