<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quzi01</title>
</head>
<body>
	
	<%-- 1) jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. --%>
	<%!
		public int sum(int end) {
			int sum = 0;
			for (int i = 1; i <= end; i++) {
				sum += i;
			}
			return sum;
	}	
	%>
	<h2>1부터 50까지의 합은 <%= sum(50) %> 입니다.</h2>
	
	<%-- 2) 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. --%>
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double average = sum / (double)scores.length;
	%>
	<h2>평균 점수는 <%= average %> 입니다.</h2>
	
	<%-- 3) 아래 채점표로 시험점수가 몇점인지 구하세요. --%>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (int i = 0; i < scoreList.size(); i++) {
			//out.print(scoreList.get(i));
			if (scoreList.get(i).equals("O")) {
				score += 100 / scoreList.size();
			}
		}
		// out.print(score);
	%>
	<h2>채점 결과는 <%= score %> 입니다.</h2>
	
	<%-- 4) 주어진 생년월일을 가진 사람의 나이를 구하세요. --%>
	<%
		String birthDay = "20010820"; // 0, 3
		String strYear = birthDay.substring(0, 4);
		//out.print(strYear);
		int age = 2024 - Integer.valueOf(strYear);
	%>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
</body>
</html>