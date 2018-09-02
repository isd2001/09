<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int st=0;				// 스트라이크
	int ball=0;				// 볼
	int ou=0;				// 아웃
	int chance = (Integer)session.getAttribute("chance");
	
	int[] ch=new int[3];
	String set1=(String) request.getParameter("set1");
	ch[0] = Integer.parseInt(set1);
	String set2=(String) request.getParameter("set2");
	ch[1] = Integer.parseInt(set2);
	String set3=(String) request.getParameter("set3");
	ch[2] = Integer.parseInt(set3);
	
	int[] number= new int[3];
	number[0]= (Integer) session.getAttribute("number1");
	number[1]= (Integer) session.getAttribute("number2");
	number[2]= (Integer) session.getAttribute("number3");

	if(number[0]==ch[0]){
		st++;
	}else if (number[0]==ch[1] || number[0]==ch[2]){
		ball++;
	}else 
		ou++;
	if(number[1]==ch[1]){
		st++;
	}else if (number[1]==ch[0] || number[1]==ch[2]){
		ball++;
	}else 
		ou++;
	if(number[2]==ch[2]){
		st++;
	}else if (number[2]==ch[1] || number[2]==ch[0]){
		ball++;
	}else 
		ou++;
	if(st==3){
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>확인중</title>
</head>
<body style="text-align: center;">
	<h2>축 하 합 니 다 .</h2>
	<p>
	총 <%=chance %> 번에 성공 하셨습니다.
	</p>
	
	<%}else { %>
	
	<h3 style="text-align: center;">결 과 발 표</h3>
	<h2 style="text-align: center;"><%=st %><font color="#B40404">S</font></h2>
	<h2 style="text-align: center;"><%=ball %><font color="#0101DF">B</font></h2>
	<h2 style="text-align: center;"><%=ou %><font color="#DBA901">O</font></h2>
	<% session.setAttribute("chance", chance+1); %>
	
	<a href="ingame.jsp">
	<button type="button" style="text-align: center;">다 시 도 전</button></a>
	
	
</body>
	<%} %>
</html>