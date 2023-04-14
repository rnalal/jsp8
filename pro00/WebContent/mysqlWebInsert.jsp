<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<a href="index.jsp">메인페이지</a>
		<a href="mySqlWebList.jsp">회원목록</a>
	</nav>
	
	<h2>마이에스큐엘 회원가입</h2>
	<form action="mysqllnsertPro.jsp" method="post">
	
	<label for="id">아이디</label> :
	<input type="text" name="id" id="id"><br><br>
	
	<label for="pw">비밀번호</label> :
	<input type="text" name="pw" id="pw"><br><br>
	
	<label for="name">이름</label> :
	<input type="text" name="name" id="name"><br><br>
	
	<input type="submit" value="회원가입"> &nbsp;&nbsp;&nbsp;&nbsp;	
	<input type="reset" value="취소">
	</form>

</body>
</html>