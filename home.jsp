<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center">Empresa Logistiqal</h1>
	<h5 class="text-center">${mensaje}</h5>
	<br style="margin-top: 15px" />
	<form method="POST" action="buscar">
            <table class="container">
            <tr>
                <th><input class="form-control" type="text"
                           placeholder="Nombre producto" name="nombre" /></th>
            <th colspan="2"><input type="submit"
                                       class="btn m-2 btn-primary" value="Buscar" /></th></tr>
            </table>
    </form>
    <a href="agregarForm" class="btn btn-primary">Agregar Producto</a>
	<table class="table table-dark table-striped">
		<tr>
			<th>Código</th>
			<th>Nombre</th>
			<th>Precio</th>
			<th>Stock</th>
			<th>Acciones</th>
		</tr>
		<c:forEach items="${VO.productos}" var="VO">
			<tr>
				<td>${VO.getCodigo()}</td>
				<td>${VO.getNombre()}</td>
				<td>${VO.getPrecio()}</td>
				<td>${VO.getStock()}</td>
				<td><a href="editarForm?codigo=${VO.getCodigo()}">Editar</a>
					<br /><a href="eliminar?codigo=${VO.getCodigo()}">Eliminar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>