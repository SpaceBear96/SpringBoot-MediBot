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

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
<jsp:include page="layout/header.jsp" />
	<div class="container">
		<hr />
		<form method="post" action="/hospitales/save">
			<input type="hidden" name="id" value="${list_h.id}" /><br /> Nombreñ:<br>
			<input type="text" name="nombre" value="${list_h.nombre}" /> <br>
			Distrito:<br> <input type="text" name="distrito"
				value="${list_h.distrito}"> <br> <br> <input
				class="btn btn-primary" type="submit" value="Submit">
		</form>
	</div>
</body>
</html>
