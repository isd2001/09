<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<%
	int len=request.getContentLength();
	System.out.println("len=="+len);
	InputStream is = request.getInputStream();
	BufferedReader br = new BufferedReader(new InputStreamReader(is));
	String got=br.readLine();
	System.out.println("readLine =="+got);
	System.out.println("queryString =="+request.getQueryString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>요청분석</h2>
	<ul>
		<li>요청방식 : <%=request.getMethod() %></li>
		<li>요청파람 : <%=request.getParameter("data") %></li>
	</ul>


</body>
</html>