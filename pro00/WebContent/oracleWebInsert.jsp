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
		<a href="oracleWebList.jsp">수강생목록</a>
	</nav>
	
	<h2>오라클 수강 정보 등록</h2>
	<form action="oracleInsertPro.jsp" method="post">
	
	<label for="c_no">학번코드</label> :
	<input type="text" name="c_no" id="c_no"><br><br>
	
	<label for="c_name">이름</label> :
	<input type="text" name="c_name" id="c_name"><br><br>
	
	<label for="phone">연락처</label> :
	<input type="tel" name="phone" id="phone"><br><br>
	
	<label for="address">주소</label> :
	<input type="text" name="address" id="address"><br><br>
	
	<label for="regist_date">등록일</label> :
	<input type="text" name="regist_date" id="regist_date"><br><br>
	
	<label>타입</label> :
	<input type="radio" name="c_type" value="일반" checked>일반
	<input type="radio" name="c_type" value="VIP">VIP<br><br>
	
	<input type="submit" value="수강 등록"> &nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="취소">
	</form>

</body>
</html>