<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>SpringBoot</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />

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
						<th>Correo</th>
						<th>Telefono</th>
						<th>Acciones</th>
					</tr>
					<c:forEach var="list" items="${lists}">
						<tr>
							<td>${list.id}</td>
							<td>${list.nombre}</td>
							<td>${list.correo}</td>
							<td>${list.telefono}</td>
							<td><a href="/view/${list.id}" class="btn btn-info">View</a>
								<a href="/delete/${list.id}" class="btn btn-danger">Delete</a> <a
								href="/edit/${list.id}" class="btn btn-success">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-md-3">
				<form method="post" action="/save" enctype="multipart/form-data">
					<input type="hidden" name="id" value="" /> 
						Nombre:<br> <input
						type="text" name="nombre" /> <br> 
						Correo:<br> <input
						type="text" name="correo"> <br>
						Telefono:<br> <input
						type="number" name="telefono"> <br>
						Password:<br> <input
						type="password" name="password"> <br> <br> 
						
						
						<input class="btn btn-primary" type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
