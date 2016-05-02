<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.imagine {
	max-height: 200px;
}

.thumbnail {
	max-height: 600px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina afisaza</title>
</head>
<body>


	<h1>Dechatlon</h1>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1>Lista Completa de Produse</h1>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${articole}" var="arti">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img class="imagine" src="/2016-03-11Magazin-online${arti.calePoza}" alt="${articol.denumire}">
						<div class="caption">
							<h3 class="alert alert-success">${arti.denumire}</h3>
							<p class="alert alert-info">${arti.pret}Lei</p>
							<!--  <a href="#" class="btn btn-primary" role="button">LIKE</a> -->
							<!--	<a href="adauga" class="btn btn-success" role="button">ADAUGA IN COS</a> -->
							<form action="adaugaInCos" method="post">
								<input type="hidden" name="id" value="${arti.id}"> <input type="submit" value="Adauga in cos de cumparaturi">
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>