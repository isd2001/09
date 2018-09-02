<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String number= String.valueOf((int)(Math.random()*200));
	session.setAttribute("number", number);
	int chance=0; 
	session.setAttribute("chance", 1);
	
	Integer v =(Integer) application.getAttribute("rank");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">

	<h2>미니게임 - UP & DOWN</h2>
	<p>
		1~200 사이의 숫자를 맞추는 게임입니다.<br /> 총 <b>10</b> 회의 기회가 부여되며 , 매 입력에 따른 결과를
		토대로 정답을 추출해 나가시면 됩니다.<br /> 시작하실려면 아래 버튼을 눌러주세요.
	</p>
	<p>
		최고 스코어 : <%=v ==null? ("기록없음"): (v+"턴") %><br/>
		<a href="turn.jsp"><button type="button">S T A R T</button></a>


	</p>


</body>
</html>