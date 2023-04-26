<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception 에러 테스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.title { text-align:center; }
	#tb1, .msg {width:600px; margin: 0 auto;}
	.btn { margin-top:20px; }
</style>
</head>
<body>
	<div class="msg">
		<h1 class="title">입력된 데이터 에러 테스트</h1>
		<p style="font-size:13pt"><%=num %></p>
	</div>
</body>
</html>