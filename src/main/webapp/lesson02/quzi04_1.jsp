<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 값</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%	
		// request parameter
		int number = Integer.valueOf(request.getParameter("number"));
		String[] lenghtArr = request.getParameterValues("lenght");
		
		// 계산
		double inch = number / 2.54;
		double yard = number / 91.44;
		double feet = number / 30.48;
		double meter = number / 100.0;
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<div><%= number %>cm</div>
		<hr>
		
		<div>
			<%= inch %>in
		</div>
		
		<div>
			<%= yard %>yd
		</div>
		
		<div>
			<%= feet %>ft
		</div>
		
		<div>
			<%= meter %>m
		</div>
		
	</div>
	
</body>
</html>