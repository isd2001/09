<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	

	String contact = request.getParameter("contact");
	String code = request.getParameter("code");

	String secure = (String) session.getAttribute("secure");

	if (contact.matches("\\d{3}-\\d{3,4}-\\d{4}") && code.equals(secure)) {
		session.setAttribute("pass", "on");
		session.setAttribute("contact", contact);
		response.sendRedirect("buy.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto</title>
</head>
<body>
	<h2>인증처리 실패</h2>
	<p>
		유효치 않은 형태의 연락처이거나, 보안코드가 일치하지 않습니다.
	</p>
</body>
<%
	}
%>