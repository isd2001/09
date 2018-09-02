<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#session</title>
</head>
<body>
	<h2>HttpSession session</h2>
	<p>
		session 은 사용자 상태저장용 객체로써,
		클라이언트들(구분은 브라우저)이 최초 접속시 
		개별적으로 생성되어 유지되며 관리되어지는 꽤 중요한 객체이다.
		JSP 파일로 처리하는 경우라면, 스크립트릿에서 별도 작업 없이 사용하면 되고,
		그 외의 상황이라면 request를 통해서 현재 요청자의 세션을 확보해서 사용하면 된다. 
	</p>
	<%
		long time = System.currentTimeMillis();
		boolean eq = (session == request.getSession() );
		boolean b = session.isNew();
		String id = session.getId();
		long create = session.getCreationTime();
		Date createD = new Date(create);
		int maxWait = session.getMaxInactiveInterval();	// 초
		
	%>
	<ul>
		<li>request를 통해서 얻어낸 요청자의 세션과 내장객체 세션은 같은가? <%=eq %></li>
		<li>session이 새것인가? <%=b %></li>
		<li>session에 부여된 아이디값은 무엇인가? <%=id %></li>
		<li>session이 만들어진 시간은 언제인가? <%=create %> / <%=createD %> / <%=time-create %> ms </li>
		<li>현재시간 ? <%=time %></li>
		<li>현재 세션의 최대대기시간 ? <%=maxWait %></li>
	</ul>
	<p>
		한번 사용자에 의해서 만들어진 세션은 사용자와 연결이 끊기거나(?) , 
			최대 대기 시간(디폴트 : 30분)내 재 요청이 발생되지 않으면 소멸 된다.
	</p>
	<%
		long last = session.getLastAccessedTime();	
		// 만들어진 시간 외에, 시간정보를 하나 더 가지고 있는데 마지막갱신시간정보이다.
	%>
	<ul>
		<li>마지막 세션 갱신시간 ? <%=last %></li> 
		<li>클라이언트가 마지막요청으로부터 재요청하는데 걸린시간 ? <%=time-last %> ms</li>
	</ul>	
	<p>
		세션을 이용해서 사용자가 했던 작업을 서버에서 기억해두었다가, 그에 따른 다른 처리가 일어나게 구현할수 있다. 
		대표적인게 로그인 인증같은 것들이다.
	</p>
	
</body>
</html>






