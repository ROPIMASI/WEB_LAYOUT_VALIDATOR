<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Return Order - <jsp:include page="resources/pages-parts/title.jsp" /></title>
	<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-colors.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-fonts.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-root-vars.css"> -->
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-basics.css">
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-grids.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-buttons.css"> -->
	<!-- <link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-forms.css"> -->

	<!-- 1º Bootstrap-CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
 	<!-- integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" -->
	
	<!-- 2º jQuery-JS -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<!-- 3º Popper-JS -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<!-- integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous" -->
	
	<!-- 4º Bootstrap-JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
	<!-- integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous" -->
</head>
<body>
	<!-- JSP directives/notations to page functionality. -->
	<%@ page info="Single Page APP, Web Layout Validator, by ROPIMASI."%>
	<%@ page errorPage="resources/error-pages/default-error.jsp"%>

	<div class="container text-center">
		<jsp:include page="resources/pages-parts/top-banners.jsp"/>
		<p>&nbsp;</p>
		
		<p class="lead"><b>VALIDADOR DE LAYOUT VIA WEB</b></p>
		<p>&nbsp;</p>
		
		<form id="layoutUpload" name="layoutUpload" action="ReturnOrderServlet?action=validate" method="post" enctype="multipart/form-data">
			1º
			<select form="layoutUpload" size="1" id="typeFileUpload" name="typeFileUpload" tabindex="1" required autofocus>
				<option value="" selected>Tipo do layout</option>
				<option value="RETORNO DE PEDIDO">RETORNO DE PEDIDO</option>
				<option value="NOTA FISCAL">NOTA FISCAL</option>
				<option value="ESTOQUE">ESTOQUE</option>
			</select>
			
			&nbsp; &nbsp;
			
			2º
			<input type="button" id="textFileUploadButton" name="textFileUploadButton" value="Escollha teu arquivo" tabindex="2"
			onclick="document.getElementById('textFileUpload').click();" />
			<input type="file" style="display:none;" id="textFileUpload" name="textFileUpload" tabindex="-1" required />
			
			&nbsp; &nbsp;
			
			3º
			<input type="button" id="validateButton" name="validateButton" value="Validar" tabindex="3"
			onclick="$('#resultContent').load('resources/pages-parts/result.jsp'); $('#reportContent').load('resources/pages-parts/report.jsp');" />
		</form>

		<p>&nbsp;</p>
		
		<div id="resultContent"></div>
		
		<p>&nbsp;</p>
		
		<div id="reportContent"></div>

		<p>&nbsp;</p>
		<p>&nbsp;</p>
		
		<hr>
		<div class="">ROPIMASI &copy; Copyright 2021 | <a href="http://ronaldomarques.dev" target="_blank">ronaldomarques.dev</a> | Web Layout Validator v0.1.0-snapshot+2108071248</div> 
	</div>
	
	<!-- <%-- File name: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	File content type: <span class="layoutfileinfo"><%= request.getParameter("filecontenttype") %></span>;
	Number of lines: <span class="layoutfileinfo"><%= request.getParameter("filenumberoflines") %></span>;
	Number of filds: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	Layout type-version: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	Artfact type: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	File content:
	<textarea class="layoutfilecontent" cols="40" rows="8"><%= request.getParameter("filetextualcontent") %></textarea>
	CONCLUSION: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>. --%> -->

</body>
</html>
