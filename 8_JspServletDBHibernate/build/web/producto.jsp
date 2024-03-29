<%-- 
    Document   : user.jsp
    Created on : 18/04/2018, 10:19:48 AM
    Author     : cerpas
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <link type="text/css"
              href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <title>Registrar producto</title>
    </head>
    <body>
        <script>
            $(function () {
                $('input[name=dob]').datepicker();
            });
        </script>

        <form method="POST" action='userController' name="frmAddUser">
            id producto : <input type="text" readonly="readonly" name="id"
                             value="<c:out value="${user.id}" />" /> <br /> 
            nombre : <input
                type="text" name="firstName"
                value="<c:out value="${user.firstName}" />" /> <br /> 
            cantidad : <input
                type="text" name="lastName"
                value="<c:out value="${user.lastName}" />" /> <br /> 
            precio : <input type="text" name="email"
                           value="<c:out value="${user.email}" />" /> <br />
             <input
                           type="submit" value="Submit" />
        </form>
    </body>
</html>