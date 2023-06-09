<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>자세히보기</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
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
	<h2 class="title">자세히 보기</h2>
	<table class="table" id="tbl">
		<tbody>
			<tr>
				<th>아이디</th>
				<td><%=request.getParameter("id") %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%=request.getParameter("pw") %></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="test1_form.jsp" class="btn btn-primary">로그인 폼으로</a>
				</td>	
			</tr>
		</tbody>
	</table>
</body>
</html>