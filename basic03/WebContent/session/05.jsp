<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#session</title>
</head>
<body>
	<h2>HttpSession</h2>
	<p>
		사용자 세션에 올려둔 데이터를 변경(Update) 하거나, 삭제(Delete) 하는 작업까지도
		살펴보자.
	</p>
	<%
		int rr = 10+(int)(Math.random()*90);
		session.setAttribute("data", rr);	// 같은이름으로 set하는게 Update 
		
		session.removeAttribute("flag");	// 키로 삭제
		session.removeValue("flag");		// 같은 처리.	
	%>
	
</body>
</html>