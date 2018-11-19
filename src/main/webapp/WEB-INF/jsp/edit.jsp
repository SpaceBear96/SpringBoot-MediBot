<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
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

	<div class="container">
		<hr />
		<form method="post" action="/save">
			<input type="hidden" name="id" value="${lists.id}" /><br /> 
			Nombre: 
			<input type="text" name="nombre" class="form-control"
			value="${lists.nombre}" /> <br>
			Correo:<br> <input type="text" class="form-control" name="correo"
				value="${lists.correo}"> <br> 
			Telefono: <input
				type="number" name="telefono" class="form-control"
				value="${lists.telefono}"> <br>
			Password: <input type="password" name="password" class="form-control"
				value="${lists.password}"> <br> <br> 
				
				<input class="btn btn-primary" type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
