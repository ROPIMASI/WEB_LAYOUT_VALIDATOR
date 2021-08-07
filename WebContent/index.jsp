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

<!-- Bootstrap-CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body>
	<!-- JSP directives/notations to page functionality. -->
	<%@ page info="Sending Order Page, Web Layout Validator, by ROPIMASI."%>
	<%@ page errorPage="resources/error-pages/default-error.jsp"%>

	<div class="container text-center">
		<img width="25%" src="resources/images/a-logo.png" class="" alt="Logo Patrocinador" title="Logo Patrocinador" id="patnerLogo" name="patnerLogo" loading="lazy">
		<img width="25%" src="resources/images/a-logo.png" class="" alt="Logo Projeto" title="Logo Projeto" id="projectLogo" name="projectLogo" loading="lazy">
		<img width="25%" src="resources/images/a-logo.png" class="" alt="Logo Ferramenta" title="Logo Ferramenta" id="toolLogo" name="toolLogo" loading="lazy">
		
		<p>&nbsp;</p>
		
		<p class="lead">
			VALIDADOR DE LAYOUT VIA WEB
		</p>
		
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
			<input type="file" style="display:none;" id="textFileUpload" name="textFileUpload" tabindex="2" required />
			<input type="button" value="loadXml" id="textFileUploadButton" onclick="document.getElementById('textFileUpload').click();" />
			
			&nbsp; &nbsp;
			
			3º
			<input type="submit" value="Valide este arquivo" tabindex="3" />
		</form>

		<p>&nbsp;</p>
		
		Resultado:
		
		<p>&nbsp;</p>
		
		<hr>
		<div class="">ROPIMASI &copy; Copyright 2021 | <a href="http://ronaldomarques.dev" target="_blank">ronaldomarques.dev</a> | Web Layout Validator v0.1.0-snapshot+2108071248</div> 
	</div>
	
	<%-- File name: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	File content type: <span class="layoutfileinfo"><%= request.getParameter("filecontenttype") %></span>;
	Number of lines: <span class="layoutfileinfo"><%= request.getParameter("filenumberoflines") %></span>;
	Number of filds: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	Layout type-version: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	Artfact type: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	File content:
	<textarea class="layoutfilecontent" cols="40" rows="8"><%= request.getParameter("filetextualcontent") %></textarea>
	CONCLUSION: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>. --%>
	
	<!-- Primeiro o jQuery-JS, depois o Popper-JS, e depois o Bootstrap-JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

</body>
</html>
