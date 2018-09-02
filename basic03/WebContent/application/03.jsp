<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#application</title>
</head>
<body>
	<h2>ServletContext application</h2>
	<p>application 도 데이터 저장 기능이 있다.(session 처럼). setAttribute() /
		getAttribute() / removeAttribute() 로 제어를 한다.</p>
	<p>
		<%
			//application.setAttribute(arg0, arg1);
			//application.getAttribute(arh0);
			//application.removeAttribute(arg0);		
		%>
		프로그램에 딱 한개 존재하는 유일 객체이기 때문에 , 사용자가 누구든, 어디 페이지 이던 
		다 공통적으로 적용 된다.
		
		
	</p>

</body>
</html>