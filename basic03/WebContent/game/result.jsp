<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	

	String number= (String) session.getAttribute("number");
	String set = request.getParameter("set");
	int chance =(Integer) session.getAttribute("chance");


	if (Integer.parseInt(set) != Integer.parseInt(number)) {
		if (Integer.parseInt(set) > Integer.parseInt(number)) {
			String result="DOWN";
			session.setAttribute("result", result);
			session.setAttribute("chance", chance+1);
			response.sendRedirect("turn.jsp");
		}else{
			String result="UP";
			session.setAttribute("result", result);
			session.setAttribute("chance", chance+1);
			response.sendRedirect("turn.jsp");
		}
	}else{
		String result="success";
		session.setAttribute("result", result);
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	
	<h2> 정 답 입 니 다 .</h2><br/>
	<b>
	<%= chance %> 번 시도 하였습니다.
	</b>
	<% 
		if(application.getAttribute("rank")==null){
			application.setAttribute("rank",chance);
		}else{
			int r =(Integer)application.getAttribute("rank");
			if(chance<r){
				application.removeAttribute("rank");
				application.setAttribute("rank", chance);
			}
				
		}
	%>

</body>
</html>
		
	<% }%>

