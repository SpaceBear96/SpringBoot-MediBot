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

tr:nth-child(even) {
	background-color: #dddddd;
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
				<td>${list_h.id}</td>
			</tr>
			<tr>
				<th>Nombre</th>
				<td>${list_h.nombre}</td>
			</tr>
			<tr>
				<th>Distrito</th>
				<td>${list_h.distrito}</td>
			</tr>
		</table>

		<a href="/hospitales" class="btn btn-warning">Volver</a>
	</div>
</body>
</html>
