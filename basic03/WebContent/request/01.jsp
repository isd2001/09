<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title># request.</title>
</head>
<body>

	<h1>HttpServletRequest request</h1>
	<p>
		request 객체의 용도는 Servlet에서 사용되던 ServletReqeust 와 같은 용도이고 ,
		이 객체가 가지고 있는 메서드 중에 이미 살펴보았지만 중요하다거나 , 추가된 것들에 대해서
		알아보장.		
	</p>
	
	<h3>기존에 살펴본것들</h3>
	<ul>
		<li>클라이언측의 IP (String): <%=request.getRemoteAddr() %></li>
		<li>전달시킨 파라미터값 (String): <%=request.getParameter("p") %></li>
		<li>전달시킨 파라미터값들 (String[]): <%=request.getParameterValues("date") %></li>
	</ul>
	<h3>추가되었거나 보지 않았던 것들</h3>
	<%
		String method = request.getMethod();			//요청방식 (GET,POST) 차이는 조금 뒤에
		StringBuffer url = request.getRequestURL();		//String 과 크게 차이가 없다.
		String protocol = request.getProtocol();		
		String path=request.getContextPath();			//지정경로 변경가능
		String uri=request.getRequestURI();
		String query=request.getQueryString();
	%>
	<ul>
		<li>요청방식 :<%=method %></li>
		<li>전체 요청 경로 : <%=url %></li>
		<li>통신규칙 :<%=protocol %></li>
		<li>프로그램을 돌리는 경로:<%=path %></li>
		<li>서버주소를 제외한 경로 : <%=uri %></li>
		<li>경로로 전달된 ?이휴에 값들<%=query %></li>
	</ul>
	<p>
		## 요청방식에 대한 내용은 HTML 로 UI 구축을 해야지만 더 살펴볼수 있다.
		
	</p>
	
	

</body>
</html>