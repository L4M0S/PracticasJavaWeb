<%-- 
    Document   : listUser
    Created on : 18/04/2018, 10:19:20 AM
    Author     : cerpas
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>productos</title>
    </head>
    <body>
        <table border=1>
            <thead>
                <tr>
                    <th>Id producto</th>
                    <th>nombre</th>
                    <th>cantidad</th>
                    <!--<th>DOB</th>-->
                    <th>Precio</th>
                    <th colspan=2>Opcion</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td><c:out value="${user.id}" /></td>
                        <td><c:out value="${user.firstName}" /></td>
                        <td><c:out value="${user.lastName}" /></td>
                        <!--<td><//fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>-->
                        <td><c:out value="${user.email}" /></td>
                        <td><a href="userController?action=edit&Id=<c:out value="${user.id}"/>">Modificar</a></td>
                        <td><a href="userController?action=delete&Id=<c:out value="${user.id}"/>">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p><a href="userController?action=insert">Registrar nuevo producto</a></p>
    </body>
</html>