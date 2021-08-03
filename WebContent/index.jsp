<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
<!-- 
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-colors.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-fonts.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-root-vars.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-basics.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-grids.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-buttons.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-forms.css">
	-->
<title>Login - <jsp:include page="resources/pages-parts/title.jsp" /></title>
</head>
<body align=center>
	<!-- JSP directives/notations to page functionality. -->
	<%@ page info="Home page to the Java Web Layout Validator, by ROPIMASI."%>
	<%@ page errorPage="resources/error-pages/default-error.jsp"%>


	<h1>WEB LAYOUT VALIDATOR</h1>
	<br/>
	<h3>UPLOAD: REMESSA DE PEDIDO</h3>
	<br/>
	<h5>File name: <%= request.getParameter("filename") %>. </h5>
	<br/>	
	<form action="OrderShippingServlet?action=validate" method="post" enctype="multipart/form-data">
	<p>
		Choose file: <input type="file" id="textFileUpload" name="textFileUpload" tabindex="1">	
	</p>
	<p>
		<input type="submit" value="Validate File" tabindex="2">
	</p>
	</form>

</body>
</html>

