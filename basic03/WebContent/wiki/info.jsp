<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="/wiki/error.jsp" %>
<%!
	Map<String,String> datas;
	public void jspInit(){
		datas=new HashMap<>();
		datas.put("luffy","해적왕");
		datas.put("zoro","칼잡이");
		datas.put("nami","항해사");
		datas.put("usop","저격수");
		
	}
%>
<%
	String key=request.getParameter("key");
	if(!datas.containsKey(key)){
		throw new IllegalAccessException("invalid key");
	}
	String value=datas.get(key);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%=key %></title>
</head>
<body>
	목표 : <%=value %>
	

</body>
</html>