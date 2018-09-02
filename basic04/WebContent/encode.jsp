<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String resp = request.getParameter("search");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web APP</title>
</head>
<body>
	<h2>EventListener.!</h2>
	<p>
		search param's value is <%=resp %> (<%=application.getAttribute("r") %>)
	</p>

</body>
</html>