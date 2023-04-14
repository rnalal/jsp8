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
		<a href="postgreWebList.jsp">제품목록</a>
	</nav>
	
	<h2>포스트그리 제품목록</h2>
	<form action="postgreInsertPro.jsp" method="post">
	
	<label for="id">아이디</label> : 
	<input type="number" name="id" id="id"><br><br>
	
	<label for="maker">제조사</label> :
	<input type="text" name="maker" id="maker"><br><br>
	
	<label for="model">모델명</label> :
	<input type="text" name="model" id="model"><br><br>
	
	<label for="year">연식</label> :
	<input type="number" name="year" id="year"><br><br>
	
	<label for="color">색상</label> :
	<input type="text" name="color" id="color"><br><br>
	
	<label for="created_at">생산일</label> : 
	<input type="text" name="created_at" id="created_at"><br><br> 
	
	<input type="submit" value="제품등록"> &nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" value="취소">
	
	</form>
</body>
</html>