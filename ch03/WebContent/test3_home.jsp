<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러페이지</title>
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
	<form action="test3.jsp" method="post">
		<div class="form-group">
			<label for="num">입력</label>
			<input type="text" id="num" name="num" class="form-control"><br>
		</div>
		<input type="submit" class="btn btn-primary" value="값 전송">
	</form>
</div>
</body>
</html>