<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1_form.jsp - 폼 입력 테스트1</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.title{text-align:center;}
	#tbl {width:800px; margin: 0 auto;}
	#tb1, .msg { width:600px; margin:0 auto; }
</style>
</head>
<body>
	<h2 class="title">로그인 폼</h2>
	<form action="test1.jsp" method="post">
		<table class="table" id="tbl">
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id" required></td>
				</tr>
				<tr>
					<th><label for="pw">비밀번호</label></th>
					<td><input type="password" name="pw" id="pw" required></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="로그인" class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" value="취소" class="btn">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<p></p>
	<hr>
	<p></p>
	<div class="msg">
		<table class="table">
			<tbody>
				<tr>
					<th>GET</th>
					<th>POST</th>
				</tr>
				<tr>
					<td>
						<p>보안이 취약합니다.</p>
						<p>전송 할 수 있는 데이터는 최대 255자입니다.</p>
						<p>post에 비해 처리속도는 빠른 편입니다.</p>
						<p>name=value의 형식으로 주소창에 전송됩니다.</p>
						<p>서블릿에서는 doGet()을 이용합니다.</p>
					</td>
					<td>
						<p>get에 비해 보안에 더 유리합니다.</p>
						<p>전송 할 수 있는 데이터의 양이 무한입니다.</p>
						<p>get에 비해 처리속도가 느립니다.</p>
						<p>서블릿에서 doPost()를 이용합니다.</p>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>