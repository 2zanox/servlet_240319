<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		header {height:80px;}
		nav {height:50px;}
		.contents {min-height:500px;}
		footer {height:30px;}
	</style>
</head>
<body>
<%
	//DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// select 쿼리 수행
	String query = "select * from `used_goods`"
			+ "order by `id` desc ";
	ResultSet res = ms.select(query);
%>

	<div id="wrap" class="container">
		
		<header class="bg-info d-flex justify-content-center align-items-center">
			<div class="display-4">HONG당무 마켓</div>
		</header>
		
		<nav class="d-flex align-items-center">
			<ul class="nav nav-fill w-100">
				<li class="nav-item"><a href="#" class="nav-link">리스트</a></li>
				<li class="nav-item"><a href="/lesson03/quzi03_1.jsp" class="nav-link">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link">마이페이지</a></li>
			</ul>
		</nav>
		
		<section class="contents">
			<div>
				
			</div>
		</section>
		
		<footer class="d-flex justify-content-center align-items-end">
			<small>Copyright 2024.HONG All Rights Reserved.</small>
		</footer>
	</div>
	
</body>
</html>