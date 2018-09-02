<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!
	public void spec(){
		
}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Objects</title>
</head>
<body>
	<h2>JSP 기반의 Web Application</h2>
	<p>
		Java로 웹 어플리케이션(프로그램)을 만들려면 요청처리를 Servlet을 이용해서 해야되는데,
		좀더 쉽게 만들기 위해서 JSP라는 언어(=기술)가 만들어지게 되었다. <br/>
		실제 JSP는 servlet으로 변환되어 작동되게 되있고 직접 servlet으로 만들어내는게 아니기에,
		JSP 파일에 설정이나 자바코드를 어떤식으로 기입해야되는지 알아보았다.
	</p>
	<p>
		파일작성을 하는 방법을 알았으면 실제 요청처리를 해보야하는데, 
		(Servlet으로 구현했을때 매개변수로 잡혀있는 ServletRequest, ServletResponse 객체 이용하듯) <br/>
		JSP 파일에서는 최종적으로 변환이 되고나면, service 메서드로 처리가 되기 때문에, 
		별도 선언이나 확보 없이 있다고 생각하고 사용하면 된다.
	</p>
	<hr/>
	<%
		String addr = request.getLocalAddr();
		//response.reset();
		String data=request.getParameter("data");
		System.out.println("data=="+data);		//null 출력..
	%>
	<h3>Server SPEC</h3>
	<p>
		<b>ADDRESS</b> : <%=addr %>:<%=request.getLocalPort() %> 
	</p>
	<hr/>
	<p>
		이 request , response 같이 요청처리중에 사용할수 있는 객체들이 존재하는데 , 이객체들을
		내장 객체 or 내포객체 (Implicit Objects) 라고 한다.<br/>
		이렇게 선언없이 사용하수 있는 객체들은 , request를 포함하여 총 <b>8</b>(+1) 개의 객체가 존재한다.
	</p>
	
	
	
</body>
</html>