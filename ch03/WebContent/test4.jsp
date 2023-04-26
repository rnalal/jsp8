<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "영");
	pageContext.setAttribute("age", "7");
%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 연습</title>
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
		<h2 class="title">pageContext1 - include directive</h2>
	</div>
	<%@ include file="includefile.jsp" %>
	<div class="msg">
		<h2 class="title">pageContext2 - include action tag</h2>
	</div>
	<jsp:include page="includefile.jsp"></jsp:include>
</body>
</html>