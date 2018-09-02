<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	

	int input=0;
	
	String result= (String)session.getAttribute("result");
	int chance =(Integer) session.getAttribute("chance");
	
	

%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	<p>
	<%=chance%>번쨰 시도 	
	</p>
	
	<h2>숫자를 입력해주세요.</h2>
	<p style="font-size: 70pt">
		<% if(result==null){
		%>
		<b>???</b>
		<% }else if(result=="success") {
			%>	
			<a href="result.jsp"><button type="button">정 답</button></a>
		<% }else {
		 %>	
		 <b><%= result %></b>
		 <% } %>
	</p>
	<form action="result.jsp">
		<input type="number" min="1" max="200" name="set" style="text-align: center; font-size: 15pt" >
		<button type="submit" style="font-size: 15pt">CHECK</button>
		
	</form>
	
	
	</body>
</html>