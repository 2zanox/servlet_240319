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
		int lenght = Integer.valueOf(request.getParameter("lenght"));
		String[] types = request.getParameterValues("type"); // 여러값 파라미터 한번에 받아오기
		
		// 계산
		double inch = lenght / 2.54;
		double yard = lenght / 91.44;
		double feet = lenght / 30.48;
		double meter = lenght / 100.0;
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= lenght %> cm</h3>
		<hr>
		
		<h2>
			<%
				if (types != null) {
					for (String type : types) { // ex) [inch, meter, feet]
						if (type.equals("inch")) { // inch
							// cm to inch
							out.print(inch + " in<br>");
						} else if (type.equals("yard")) { // yard
							out.print(yard + " yd<br>");
						} else if (type.equals("feet")) { // feet
							out.print(feet + " ft<br>");
						} else if (type.equals("meter")) { // meter
							out.print(meter + " m<br>");
						}
					}
				}
			%>
		</h2>
	</div>
	
</body>
</html>