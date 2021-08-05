<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
 
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-colors.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-fonts.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-root-vars.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-basics.css">
<!--
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-grids.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-buttons.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/wlv-style-forms.css">
-->
<title>Return Order - <jsp:include page="resources/pages-parts/title.jsp" /></title>
</head>
<body>
	<!-- JSP directives/notations to page functionality. -->
	<%@ page info="Sending Order Page, Web Layout Validator, by ROPIMASI."%>
	<%@ page errorPage="resources/error-pages/default-error.jsp"%>


	<h1>WEB LAYOUT VALIDATOR</h1>
	<br/>
	<h3>RETURN ORDER: UPLOAD</h3>
	<br/>
	<br/>
		<form id="layoutUpload" name="layoutUpload" action="ReturnOrderServlet?action=validate" method="post" enctype="multipart/form-data">
		Choose file: <input type="file" id="textFileUpload" name="textFileUpload" tabindex="1"> , <input type="submit" value="Validate this file!" tabindex="2">	
		</form>
	<br/>
	<br/>
	<h4>RESULT:</h4>
	<p>
	File name: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	<br/>
	File content type: <span class="layoutfileinfo"><%= request.getParameter("filecontenttype") %></span>;
	<br/>
	Number of lines: <span class="layoutfileinfo"><%= request.getParameter("filenumberoflines") %></span>;
	<br/>
	Number of filds: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	<br/>
	Layout type-version: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	<br/>
	Artfact type: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span>;
	<br/>
	<br/>
	<h6>File content:</h6>
	<textarea class="layoutfilecontent" cols="40" rows="8"><%= request.getParameter("filetextualcontent") %></textarea>
	<br/>
	<br/>
	<br/>
	<h4>CONCLUSION: <span class="layoutfileinfo"><%= request.getParameter("filename") %></span> !</h4>
	<br/>
	<br/>
	<br/>
</body>
</html>
