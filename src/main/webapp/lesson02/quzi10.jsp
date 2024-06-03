<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<style>
		header {height:80px;}
		nav {height:50px;}
		#banner {height:100px;}
		.contents {min-height:500px;}
		footer {height:30px;}
	</style>
</head>
<body>
	<div id="wrap" class="container">
		
		<header class="bg-primary">
			<div class="d-flex align-items-center">
				<h1 class="text-success">Melong</h1>
				<div class="d-flex">
					 <input type="text" class="form-control">
					 <button class="btn btn-info" type="button">검색</button>
				</div>
			</div>
		</header>
		
		<nav class="bg-warning d-flex align-items-center">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		
		<div id="banner" class="bg-secondary">
		
		</div>
		
		<section class="contents bg-danger">
		
		</section>
		
		<footer class="bg-info justify-content-center align-items-center">
			<small>Copyright © 2024. melong All Rigths Reserved.</small>
		</footer>
	</div>
</body>
</html>