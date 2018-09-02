<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
	Properties props = new Properties();			// Map 형태
		
    String real = application.getRealPath("/WEB-INF/conf/inform.txt");
	out.println(real);
    FileInputStream fis= new FileInputStream(new File(real));
    
    props.load(fis);
    
    String app = props.getProperty("appName");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RealPath</title>
</head>
<body>
	<ul>
		<li>real: <%= real %></li>
		<li>props: <%= props %></li>
	</ul>
	<h3>props load result</h3>
	<ul>
		<li>get("appName"): <%= props.get("appName")%> / <%=props.getProperty("appName")%></li>
		<li>get("developer"): <%= props.get("developer") %> / <%=props.getProperty("developer")%></li>
		<li>get("from"): <%= props.get("from") %> / <%=props.getProperty("from")%></li>
	</ul>
	

</body>
</html>