<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page errorPage="/error.jsp" %>
<%
	if(Math.random()>0.5){
		throw new RuntimeException("invalid request!");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%= application.getInitParameter("title") %></title>
</head>
<body>
	<h2>6. HttpSession session</h2>
	<p>
		session 객체는 http 프로토콜이 발전하면서 추가적으로 만들어진 객체로써,
		<%
		HttpSession s = request.getSession();
	%>
		request객체를 통해서 확보하여 사용할수 있게 된 객체이다. 이걸 바로 사용할수 있게 미리 내장객체로 잡아두었다.
		<%=s == session%>

	</p>
	<p>
		session 은 웹 프로그램을 사용하는 클라이언트별로 개별적으로 가지게 될 데이터 저장용 객체로써,
		<%=session.getId()%>
		, 사용자 상태를 기억하는 용도는 이다.
	</p>
	<h2>7. ServletContext application</h2>
	<p>
		application 객체는 프로그램이 가동될때 생성되는 객체로, servlet 으로 처리했다면 , config 나
		request 객체를 통해서 얻어다 사용해야되는 객체이다.
		<%
		ServletContext ctx = config.getServletContext();
		ServletContext ctxx = request.getServletContext();
	%>
		<%=ctx == ctxx%>
		,
		<%=ctxx == application%>
		,
		<%=application == ctx%>

	</p>
	<p>ServletContxt 객체를 통해서 하는 작업은 , 프로그램 전반의 param을 설정한다거나 , log를
		남긴다거나 , 프로그램의 버전을 확인하는 작업들이다.</p>
	<%
		application.log("B.A.A.M !!");
	%>
	<h2>8. PageContext pageContext</h2>
	<p>
		직접사용할일은 많지 않은 객체로 , container가 내장객체를 여러개를 한꺼번에 만들어내기위해서 설계해둔 객체이다.
		<%=pageContext.getServletConfig()==config %>
		<%=pageContext.getServletContext()==application %>
		<%=pageContext.getOut()==out %>
	</p>
		<h2>+1. Exception exception</h2>
	<p>
		Exception 객체는 일반적으로는 안만들어진다. / isErrorPage = true 로 설정한
		JSP파일에만 만들어지는 내장객체이다.
		<%
		
		
		%>		
	
	</p>


</body>
</html>