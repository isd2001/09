<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Onepice</title>
</head>
<body style="text-align: center">

	<form action="<%= request.getContextPath()%>/wiki.info.jsp">
	<input type="text" name="key"/>
	<button>SEARCH</button>
	</form>
		<a href="info.jsp?key=luffy">
	<img src="<%= request.getContextPath() %>/image/luffy.png"/></a>
		<a href="info.jsp?key=nami">
	<img src="<%= request.getContextPath() %>/image/nami.png"/></a><br/>
		<a href="info.jsp?key=zoro">
	<img src="<%= request.getContextPath() %>/image/zoro.png"/></a>
		<a href="info.jsp?key=usop">
	<img src="<%= request.getContextPath() %>/image/usop.png"/></a><br/>
	
	

</body>
</html>