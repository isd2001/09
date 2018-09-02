<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("pass") == null) {
		response.sendRedirect("auth.jsp");
	}
	int[] number = new int[3];

	while (true) {
		for (int i = 0; i < 3; i++) {
			int j = (int) (Math.random() * 9);
			number[i] = j;
		}
		if (number[0] != number[1] && number[1] != number[2] && number[0] != number[2]) {
			break;
		}
	}

	session.setAttribute("number1", number[0]);
	session.setAttribute("number2", number[1]);
	session.setAttribute("number3", number[2]);

	session.setAttribute("chance", 1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임시작</title>
</head>
<body style="text-align: center;">
	<h2>숫자 게임</h2>
	<p>
		설명 >> 임의에 숫자(0~9) 3개를 입력하고 , 3스트라이크 가 되면 승리합니다. 최소에 기회로 승리하면 기록에
		남게됩니다.<br /> 숫자와 위치가 일치하면 <b><font color="#B40404">스트라이크</font></b> <br/>
		 숫자를 일치하지만 위치가 다르면<b><font color="#0101DF"> 볼</font></b> <br/> 
		 세 숫자 가	모두 일치 하지 않으면 <b><font color="#DBA901">아웃</font></b>
	</p>
	<p>
		<a href="ingame.jsp"><button type="button">S T A R T</button></a>
	</p>

</body>
</html>