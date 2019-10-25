<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="Resource/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <form method="POST" action='controlador' name="frmAddArticulo" role="form">
                 
                
                <div class="form-group">
                    <label for="codigo">
                        Codigo: <input class="form-control" type="text" name="codigo" readonly value="<c:out value="${articulo.codigo}" />" />
                    </label>
                </div>
                <div class="form-group">
                    <label for="nombre">
                        Nombre:<input class="form-control" type="text" name="nombre" value="<c:out value="${articulo.nombre}" />" />
                    </label>
                </div>
                <div class="form-group">
                    <label for="precio">
                        Precio: <input class="form-control" type="text" name="precio" value="<c:out value="${articulo.precio}" />" />
                    </label>
                </div>
                <input type="submit" value="Submit" class="btn btn-info" />
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    </body>
</html>
