<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num="";
	for(int i=1;i<6;i++){
		int j= (int)(Math.random()*9);
		num +=j;
	}
	
	session.setAttribute("secure", num);
	System.out.println(num);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인정 절차</title>
</head>
<body style="text-align: center;">
	<h2> 인 증 절 차 </h2>
	<p>
	 핸드폰번호 와 인증 번호를 입력후 
	게임 사용 가능합니다.
	</p>
	<h1><%=num  %></h1>
		<form action="fail.jsp" method="post">
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