<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<style>
.imagine {
	max-height: 30px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cosul Dumneavoastra</title>
</head>
<body>

	<h1 class="-success">Continutul cosului dumneavoastra :</h1>

	<c:set var="i" value="0" />
	<!-- Realizam o variabila locala i = 0; -->

	<table class="table table-hover">
		<!-- Realizam un tabel cu patru coloane  -->
		<tr>
			<th class="">#ID</th>
			<th>Denumire Produs</th>
			<th class="">Pret</th>
			<th>Poza</th>
		</tr>
		<c:forEach items="${sessionScope.cos}" var="articol">
			<!-- Parcurgem cu un for toate elementele din Sesiune.cos -->

			<c:set var="i" value="${i+articol.pret}" />
			<!-- Adaugam la var i = i + pretArticol; -->

			<tr>
				<td class="success">${articol.id}</td>
				<td>${articol.denumire}</td>
				<td class="success">${articol.pret}</td>
				<td><img class="imagine"
					src="/2016-03-11Magazin-online${articol.calePoza}"
					alt="${articol.denumire}"></td>
			</tr>

		</c:forEach>


	</table>
	<div class="alert alert-warning" role="alert">
		<strong><p class="text-right">Produsele adaugate in cosul dumneavoastra valoreaza: ${i} lei.</p></strong>
	</div>

<a href="home" class="btn btn-primary btn-lg active" role="button">Continua cumparaturile</a>

<a href="#" class="btn btn-success btn-lg active" role="button">Plateste</a>


</body>
</html>