
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
		
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<title>comprar  </title>

<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap.css" rel="stylesheet">
</head>
    <body>
	
	<div class="wrap">
	<section>
            <div class="container">
                    <table class="table table-hover">
                            <thead>
                                    <tr>
                                            <th>
                                                    Codigo
                                            </th>
                                            <th>
                                                    Nombre
                                            </th>
                                            <th>
                                                    Precio
                                            </th>
                                    </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${articulos}" var="articulo">
                                            <tr>
                                                    <td>
                                                            <c:out value="${articulo.codigo}"/>
                                                    </td>
                                                    <td>
                                                            <c:out value="${articulo.nombre}"/>
                                                    </td>
                                                    <td>
                                                            <c:out value="${articulo.precio}"/>
                                                    </td>
                                                    <td><a href="controlador?action=edit&codigo=<c:out value="${articulo.codigo}"/>">Update</a></td>
                                                    <td><a href="controlador?action=delete&codigo=<c:out value="${articulo.codigo}"/>">Delete</a></td>
                                            </tr>
                                    </c:forEach>
                            </tbody>
                    </table>
            <a href="controlador?action=insert" role="button" class="btn btn-info btn-lg" data-toggle="modal">Agregar</a>	
            <a href="controlador?action=comprar" role="button" class="btn btn-info btn-lg" data-toggle="modal">Comprar</a>
            </div>
	</section>	
</div>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</body>
</html>
