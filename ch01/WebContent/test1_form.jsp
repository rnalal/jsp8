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
	#tbl {width:800px; margin: 0 auto; }
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
</body>
</html>