<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="charset=ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<form class="container" action="agregar" method="post">
	<h1 class="text-center">Agregar Producto</h1>
	<h5 class="text-center">${mensaje}</h5>
			<tr>
				<td><div class="input-group mb-3">
						<span class="input-group-text" id="inputGroup-sizing-default">Nombre Producto</span>
						<input type="text" class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default" name="nombre">
					</div></td>
			</tr>
			<tr>
				<td><div class="input-group mb-3">
						<span class="input-group-text" id="inputGroup-sizing-default">Precio Producto</span>
						<input type="text" class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default" name="precio">
					</div></td>
			</tr>
			<tr>
				<td><div class="input-group mb-3">
						<span class="input-group-text" id="inputGroup-sizing-default">Stock Producto</span>
						<input type="text" class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default" name="stock">
					</div></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Agregar" class="btn btn-secondary"/></td>
			</tr>
	</form>
</body>
</body>
</html>