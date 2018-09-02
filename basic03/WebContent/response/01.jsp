<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/error.jsp" %>
<%
	/*if(Math.random()>0.5) {
		throw new RuntimeException();
	}*/
	if(Math.random()>0.0) {
		// response.sendRedirect("01.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#response</title>
</head>
<body>
	<h2>HttpServletResponse response</h2>
	<p>
		response 객체의 대부분의 메서드들은 JSP로 처리하는 과정에서는 필요치 않다.
		쿠키관련작업을 한다거나, 상태코드 설정, 리다이렉트에 관련된 메서드들 위주로 사용하시면 된다.
	</p>
	<p>
		응답 상태코드는, 에러페이지 처리할때 필요하다. 
		웹요청이 처리되고 나면 사용자에게 응답이 날라갈때, 상태코드가 브라우저에게 전달되게 되있다.
		200(정상처리)/ 404(페이지못찾을때) / 500(처리오류) 값들이 자주발생하는 응답코드이다.	
		일부 브라우저에서는 상태 코드 500 응답의 문서의 경우에는 브라우저에서 거부하는 상황이 있다.
		그래서, status 변경을 시켜서 보내야되는 경우가 생기는데, 이 작업을 response를 통해서 처리한다.
	</p>
	<p>
		리다이렉트는 응답을 HTML이 아니라, 다시 가야되는 경로를 보내주는 작업이다. 
		이 작업도 response를 통해서 처리해야 된다. 
		잘못된 요청을 보낸경우 경로 재지정을 해준다거나, 
		정상처리 이후 연계 페이지로 이동을 지정해주고 싶을때 주로 사용되는게 redirect 다. 
	</p>
</body>
</html>









