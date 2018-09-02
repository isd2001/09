<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>#request</title>
</head>
<body>
	<h2>HTML 로 UI 설계하기</h2>
	<p>지금까지는 주소창에 직접 요청경로를 적고 들어오는 경우만 처리했는데, 실제 웹프로그램은 클라이언트측에서 요청을 쉽게
		발생시킬 수 있게 HTML로 장치를 설정해두어야 한다. 크게 2가지를 이용해서 구축해둘수가 있다.</p>
	<h3>anchor tag</h3>
	<p>a 태그는 글씨나 이미지를 클릭했을때 , 요청이 일어날수 있게 링크 설정을 하는 태그이다. a 태그로 인해서
		클라이언트측에서 발생한 요청은 GET 으로 요청이 일어나게 된다.</p>
	<a href="01.jsp">링크</a> |
	<a href="01.jsp?p=sports">스포츠 </a> |
	<a href="<%=request.getContextPath()%>/request/01.jsp?p=sports">스포츠(절대)
	</a> |
	<a href="01.jsp?p=movie"><img
		src="https://post.naver.com/viewer/postView.nhn?volumeNo=15565985&memberNo=26715199#" /></a>
	<p>경로는 상대경로,절대경로, 전체경로 로 설정가능하다.</p>
	<h3>form tag</h3>
	<p>form tag는 사용자에게 데이터를 입력할수 있게 해두고, 작성이나 , 선택된 내용을 가지고 요청을 발생시키고자
		할때 사용하는 태그이다. input 요소들에 파라미터명을 지정해서 설계해야 하고, 단일 요소에서 액션이 발생한다거나, 멀티
		input 요소에서 submit이 일어난다.</p>
	<form action="01.jsp">
		input(default) : <input name="p" /> <br /> 
		input(text) : <input name="t" type="text" /> <br /> 
		input(password) : <input name="d" type="text" /> <br />
		input(date) : <input name="b" type="date" /><br />
		input(number) : <input name="n" type="number" /> <br />
		<button>전송</button>
		<button type="submit">전송</button>
		<button type="reset">취소</button>
		<button type="button" onclick="window.alery('okay?')">일반버튼	</lbutton>
	</form>


	

</body>
</html>