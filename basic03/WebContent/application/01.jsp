<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#application</title>
</head>
<body>
	<h1>ServletContext application</h1>
	<p>
		application 객체는 서버측에서 해당 프로그램을 가동시키면서 만들어지는 객체 (단 하나 뿐)
		프로그램의 전반에 관한 설정들을 얻어내거나 , 변경할수 있는 객체이다.
		또한 , 앞서 살펴본거 같이 log 기능을 제공한다.
	</p>
	<% 
		int to = application.getSessionTimeout();		// 세션 기본 대기시간이 나옴.
		// application.setSessionTimeout(60);			// 기본 세션 대기시간을 바꾸는 작업 (web.xml 에서 한작업과 같은 효과).
		// 기본 설정 변경같은 작업은 jsp에서 잘 하지는 않는다.
		// 정보를 얻어다 쓰는 작업들이 application 객체를 통해서 일어난다.
		application.getInitParameter("title");			// context-param 확보하기
		String path=application.getContextPath();		// request.getContextPath() 랑 결과는 같다.
		
		int major=application.getMajorVersion();
		int minor=application.getMinorVersion();
		// 프로그램의 서블릿 버전이 나옴. (WAS 종류에 따라서 달라질수 있다..)
		String encode=application.getRequestCharacterEncoding();
		// serRequestCharacterEncoding();  RequestBody 인코딩을 설정할수 있다.
		// Listener 보고 변경시켜보는 걸로..
		String realPath=application.getRealPath("/asdasdsa");					// 가상경로에 해당하는 실제 경로를 얻어낼 수 있다
		// 가상경로 = 절대경로 라고 보며됨.
		//application.addFilter();
		//application.addListener();
		//application.addServlet();
		// 이런 메서드들도 가지고 있다 . 필터나 리스너 , 서불릿 등록같은..
		
	%>
	
	<ul>
		<li> contextPath > <%= path %></li>
		<li> app version > <%= major %>,<%= minor %></li>
		<li> encode > <%= encode %></li>
		<li> realPath > <%= realPath %></li>
	</ul>
	<p>
		프로그램의 정보들중에 좀 주의깊게 봐둬야하는 정보는 getRealPath() 로
		프로그램상 위치시켜둔 파일(혹은 경로 )의 실제 위치를 얻어내는 기능이다.
	</p>

</body>
</html>