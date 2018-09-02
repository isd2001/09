<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Object</title>
</head>
<body>
	<h2>1. HttpServletRequset request / 2. HttpServletResponse response </h2>
	<P>
		이 두 객체는 Servlet을 직접 만들때 사용해 보았던 
		ServletRequest , ServletResponse 의 확장객체이다.<br/>
		사용 해봤던 모든 메서드들은 가지고 있고 , 추가 구현된 기능들이 존재한다.
	
	</P>
	<p>
		예를 들어 request 객체같은 경우에는 요청 방식 (<%= request.getMethod() %>)
		이라던가 , security 에 관련된 메서드 (<%= request.isSecure() %>) 들이 추가되있다.	
	</p>
	<p>
		response 객체는 상대적으로 덜 쓰게 되겠지만 , 쿠키처리와 관련된 추가된 기능들이 존재한다.
		<%
			response.addCookie(new Cookie("LGU+","test"));
		%>
	</p>
	
	<h2>3. JSPWriter out</h2>
	<p>
		이 객체는 response를 통해서 확보했던 PrintWriter 의 역할을 하는 객체이다.
		<% 
			// scriptlet에서 
			out.print("직접 <b>out</b>객체를 이용해서 출력을 진행해도 된다.");
			// out.clear();
		%>
	
	</p>
	<h2>4. ServletConfig config</h2>
	<p>
		서블릿으로 요청처리할때 init의 매개변수로 잡혀있던 , config 객체도 내장객체중 하나이다.
		JSP에서는 활용할 방도가 없기에 중요하진 않다.
		<%
			config.getInitParameter("");		//?
			// int config;
		%>
	</p>
	<h2>5. Object page</h2>
	<p>
		page 객체는 this 값을 담아둔 객체이다. <%= page== this %>
		<%
			
		%>
	</p>
	
</body>
</html>