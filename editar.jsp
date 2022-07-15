<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta charset="charset=ISO-8859-1">
<script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<form action="editar" method="post">
	<h1 class="text-center">Editar Usuario</h1>
	<h5 class="text-center">${mensaje}</h5>
		<table class="table table-dark table-striped container">
			<tr>
			<td><div class="input-group mb-3">
						<input type="hidden" value="${VO.getCodigo()}" name="codigo"  class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">
					</div></td>
			</tr>
			<tr>

				<td>Nombre:<div class="input-group mb-3">
						<input type="text" value="${VO.getNombre()}" name="nombre"  class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">
					</div></td>
			</tr>
			<tr>
				<td>Precio:<div class="input-group mb-3">
						<input type="number" value="${VO.getPrecio()}" name="precio"  class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">
					</div></td>
			</tr>
			<tr>
				<td>Stock:<div class="input-group mb-3">
						<input type="number" value="${VO.getStock()}" name="stock"  class="form-control"
							aria-label="Sizing example input"
							aria-describedby="inputGroup-sizing-default">
					</div></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Agregar" class="btn btn-secondary"/></td>
			</tr>
		</table>
	</form>
</body>
</html>
