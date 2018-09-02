<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int chance= (Integer) session.getAttribute("chance");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임시작</title>
</head>
<body style="text-align: center;">
	<p>
	<%=chance %>번째 도전
	</p>
	<br/>
	<img src="bell.jpg" width="100" height="100">
	<img src="bell.jpg" width="100" height="100">
	<img src="bell.jpg" width="100" height="100">
	
	
		<form action="result.jsp">
		<input type="number" min="0" max="10" name="set1" style="text-align: center; font-size: 10pt" >
		<input type="number" min="0" max="10" name="set2" style="text-align: center; font-size: 10pt" >
		<input type="number" min="0" max="10" name="set3" style="text-align: center; font-size: 10pt" >
		<button type="submit" style="font-size: 15pt">CHECK</button>
		
	</form>
	
	
	
</body>
</html>	