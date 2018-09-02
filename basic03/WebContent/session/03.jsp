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
		session 은 사용자별 개별 상태를 관리하기 위해서 만들어진 저장용 객체이다. 
		프로그램적으로 직접 관리를 해야될 부분은 많지 않고, 
		사용법(C,R,U,D)을 익혀두면 된다.
	</p>
	<p>
		session 은 저장영역이 Map&lt;String, Object&gt;으로 구현이 되어있다.
		키를 String으로 해서 모든 객체타입이 다 저장이 된다.
	</p>
	<%
		// 사용자 세션에 데이터 저장
		int r = (int)(Math.random()*100);
		session.setAttribute("data", r);	// <-- 이걸로 사용하는걸 권장	
		session.putValue("flag", "on");	
	%>
	
</body>
</html>