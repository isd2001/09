<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page errorPage="/error.jsp" %>
<%
	int cnt = Integer.parseInt(request.getParameter("cnt"));	
	String[] nums = request.getParameterValues("num");	 

	int[] inums;
	if(nums == null) {
		inums = new int[0];		
	} else {
		if(nums.length >6) {
			throw new IllegalArgumentException("too many selected");
		}
		inums = new int[nums.length];
		for (int i = 0; i < nums.length; i++) {
			inums[i] = Integer.parseInt(nums[i]);
			if(inums[i]<0 || inums[i]>45) {
				response.sendRedirect("buy.jsp");
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lotto</title>
</head>
<body style="text-align: center">
	<h2>자동 발권 결과</h2>
	<%=session.getAttribute("contact") %>
	<p>
		구매 수량 : <b><%=cnt%></b> 장
	</p>
	<p>
	<!-- 
	[1, <b>3</b>, 10, 11, <b>25</b>, 27]<br/>
	 -->
	<%
		for (int i = 1; i <= cnt; i++) {
			Set<Integer> set = new TreeSet<>();
			for (int ii = 0; ii < inums.length; ii++) {
				set.add(inums[ii]);
			}
			while (set.size() < 6) {
				int r = 1 + (int) (Math.random() * 45);
				set.add(r);
			}
			%>
				<%=set.toString() %><br/>
			<%
		}
	%>
	</p>
</body>
</html>



