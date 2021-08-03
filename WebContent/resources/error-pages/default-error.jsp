<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Página de erro padrão - <jsp:include page="../pages-parts/title.jsp" /> </title>
</head>
<body bgcolor="#cdc">
	<%@ page info="Página de erro padrão." %>
	<%@ page isErrorPage="true" %>
		
	<h1>WEB LAYOUT VALIDATOR</h1>
	<H2>Página de erro padrão</H2>
	<h4>Exception = <%= exception %>.</h4>
</body>
</html>