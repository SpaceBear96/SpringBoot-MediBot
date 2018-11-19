<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>SpringBoot</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
</style>
</head>
<body>
	<jsp:include page="layout/header.jsp" />
	</br>
	</br>
	<div class="container">

		<table class="table table-striped">
			<tr>
				<th>ID</th>
				<td>${lists.id}</td>
			</tr>
			<tr>
				<th>Nombre</th>
				<td>${lists.nombre}</td>
			</tr>
			<tr>
				<th>Correo</th>
				<td>${lists.correo}</td>
			</tr>
			<tr>
				<th>Telefono</th>
				<td>${lists.telefono}</td>
			</tr>
			<tr>
				<th>Password</th>
				<td>${lists.password}</td>
			</tr>
		</table>

		<a href="/" class="btn btn-warning">Volver</a>
	</div>
</body>
</html>
