<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quzi02-servlet 용도</title>
</head>
<body>
	
	<%
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		String time = request.getParameter("time");
		String day = request.getParameter("day");
	%>
	<h1>현재 시간은 <%=sdf.format(now) %> 입니다.</h1>
	<h1>현재 시간은 <%=day %> 입니다.</h1>
	
</body>
</html>