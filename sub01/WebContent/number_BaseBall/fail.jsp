<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String contact=request.getParameter("contact");
	String code=request.getParameter("code");
	String secure=(String) session.getAttribute("secure");
	
	if (contact.matches("\\d{3}-\\d{3,4}-\\d{4}") && code.equals(secure)) {
		session.setAttribute("pass", "on");
		session.setAttribute("contact", contact);
		response.sendRedirect("gamestart.jsp");
	} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증실패</title>
</head>
<body style="text-align: center;">
	<h2>인증요청 실패</h2>
	<p>
		해당 요청에 실패 하였습니다.<br/>
		핸드폰 요청 에 실패 또는 인증번호가 동일하지 않습니다.
	</p>
	<a href="auth.jsp"><button type="button">다 시 시 도 </button></a>
</body>
<%
	}
%>
</html>