<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#session</title>
</head>
<body>
	<h2>HttpSession session</h2>
	<p>
		사용자 세션에서 데이터를 확인하려면, 키를 이용해서 처리하면 되고
		나오는 타입이 Object type이라 Casting 이 필요하다.
	</p>
	<h3>당신의 세션정보</h3>
	<%
		Integer n = (Integer)session.getValue("data");
		String d = (String)session.getAttribute("flag");
	%>
	<ul>
		<li>data 값 : <%=n %></li>
		<li>flag 값 : <%=d %></li>
	</ul>
	<p>
		Map 같이 containsKey 같은 메서드는 없다. 사용자 세션에 
		특정 데이터가 있냐 없냐는 null 체크를 해야된다.
	</p>
	<p>
	<%if(session.getAttribute("data")==null) { %>
		당신의 세션에는 data라는 이름의 값이 존재하지 않는다.
	<%} else {
		int nn =  (Integer)session.getAttribute("data");
		%>
		당신의 세션의 data 값 : <%=nn %>
	<%} %>
	</p>
</body>
</html>







