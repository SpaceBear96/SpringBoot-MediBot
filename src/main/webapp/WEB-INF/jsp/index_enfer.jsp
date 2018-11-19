<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="layout/header.jsp" />
		<div class="row">
			<div class="col-md-9">
				<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Descripcion</th>
						<th>Acciones</th>
					</tr>
					<c:forEach var="l_enfer" items="${l_enf}">
						<tr>
							<td>${l_enfer.id}</td>
							<td>${l_enfer.nombre_enf}</td>
							<td>${l_enfer.descripcion_enf}</td>
							<td><a href="/enfermedades/view/${l_enfer.id}"
								class="btn btn-info">View</a> <a
								href="/enfermedades/delete/${l_enfer.id}" class="btn btn-danger">Delete</a>
								<a href="/enfermedades/edit/${l_enfer.id}" class="btn btn-success">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="col-md-3">
				<form method="post" action="/hospitales/save">
					<input type="hidden" name="id_enf" value="" /> Nombre: <br> <input
						type="text" name="nombre_enf" /> <br> Descripcion: <br>
					<input type="text" name="descripcion_enf" />
					<br> <br> <input class="btn btn-primary" type="submit"
						value="Submit">
				</form>
			</div>
		</div>
</body>
</html>