<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.*" %>
<%
	if(session.getAttribute("pass") == null) {
		// response.sendRedirect(request.getContextPath()+"/lotto/auth.jsp");
		response.sendRedirect("auth.jsp");
	}
	DecimalFormat df = new DecimalFormat("00");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lotto</title>
</head>
<body style="text-align: center">
	<h2>로또 자동 발권기</h2>
	<p>
		구매하고자 하는수량과, 
			포함시켜야되는 숫자가 있다면 체크하신 후 <b>신청</b>을 해주세요.<br/>
	</p>
	<form action="result.jsp">
		<p>
			<%for(int n=1; n<=45; n++) { %>
				<input type="checkbox" value="<%=n %>" name="num"/> <%=df.format(n) %>
				<%if(n%5==0) { %>
					<br/>
				<%} %>
			<%} %>
		</p>
		<p>
			<b>＊발권수량</b> : <input type="number" min="1" max="10" name="cnt"/> <button>발권신청</button>
		</p> 
		
	</form>
	
</body>
</html>






