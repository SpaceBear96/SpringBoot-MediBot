<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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
	<br>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Distrito</th>
						<th>Acciones</th>
					</tr>
					<c:forEach var="listhp" items="${list_h}">
						<tr>
							<td>${listhp.id}</td>
							<td>${listhp.nombre}</td>
							<td>${listhp.distrito}</td>
							<td><a href="/hospitales/view/${listhp.id}"
								class="btn btn-info">View</a> <a
								href="/hospitales/delete/${listhp.id}" class="btn btn-danger">Delete</a>
								<a href="/hospitales/edit/${listhp.id}" class="btn btn-success">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-md-3">
				<form method="post" action="/hospitales/save">
					<input type="hidden" name="id" value="" /> Nombre<br> <input
						type="text" name="nombre" /> <br> Distrito:<br>
					<select name="distrito">
						<c:forEach var="dist_l" items="${l_dist}">
							<option value="${dist_l.nombre_d}">${dist_l.nombre_d}</option>
						</c:forEach>
					</select>

					<br> <br> <input class="btn btn-primary" type="submit"
						value="Submit">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
