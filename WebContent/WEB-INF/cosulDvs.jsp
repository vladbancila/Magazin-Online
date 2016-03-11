<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cosul Dumneavoastra</title>
</head>
<body>

<h1>Continut cos dvs.</h1>
<c:set var="i" value="0"/>
<c:forEach items="${sessionScope.cos}" var="articol">
<c:set var="i" value="${i+articol.pret}"/>
<p>${articol.denumire}<p>
<p><img class="imagine"	src="/2016-03-11Magazin-online${articol.calePoza}" alt="${articol.denumire}"> </p>
<p>${articol.pret}</p>
</c:forEach>
<p class="warning">Aveti in total de plata: ${i} lei.</p>



</body>
</html>