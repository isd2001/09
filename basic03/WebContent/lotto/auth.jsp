<%--
	/lotto/auth.jsp
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str="";
	for(int cnt=1; cnt<=5; cnt++){
		char c = (char)('가' + (int)(Math.random()*('힇'-'가'+1)));
		str += c;
	}
	session.setAttribute("secure", str);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto</title>
</head>
<body style="text-align: center">
	<h2>사용자 인증</h2>
	<p>
		핸드폰 번호와 보안문자를 토대로 인증을 진행합니다.<br/>
		핸드폰 번호 형식이 맞지 않거나, 보안문자가 일치않는다면 인증되지 않습니다. 
	</p>	
	<h1><%=str %></h1>
	<form action="valid.jsp" method="post">
		<p>
			<b>연락처</b><br/>
			<input type="text" name="contact" placeholder="xxx-xxxx-xxxx" style="text-align: center"/>	
		</p>
			<b>보안문자</b><br/>
		<p>
			<input type="text" style="text-align: center" name="code"/>	
		</p>
		<p>
			<button>인증요청</button>		
		</p>	
	</form>
</body>
</html>







