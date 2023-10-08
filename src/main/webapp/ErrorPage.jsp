<%@
	page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    session="false"
%>
<%@page import="java.io.IOException"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR PAGE</title>
</head>
<body>


<h1> <%= exception.getMessage() %></h1>
<%-- <p> <%= exception.toString() %> --%>

</body>
</html>