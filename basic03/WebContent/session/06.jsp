<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.getAttribute("aa");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#session</title>
</head>
<body>
	<h2>HttpSession session</h2>
	<p>
		세션관리를 할때 허용된 관리 메서드는 invalidate 라는 것이다.
	</p>
</body>
</html>
<%
	session.invalidate();	// 현재 사용자 세션을 강제 무효화
	// session.getAttribute("aa");
%>