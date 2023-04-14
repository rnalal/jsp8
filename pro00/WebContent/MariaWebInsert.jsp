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
		<a href="MariaWebList.jsp">강좌목록</a>
	</nav>
	
	<h2>마리아디비 강좌목록</h2>
	<form action="MariaInsertPro.jsp" method="post">
	
	<label for="id">강좌번호</label> :
	<input type="text" name="id" id="id"><br><br>
	
	<label for="name">강좌이름</label> :
	<input type="text" name="name" id="name"><br><br>
	
	<label for="credit">학점</label> :
	<input type="number" name="credit" id="crdit"><br><br>
	
	<label for="lecturer">강사번호</label> :
	<input type="text" name="lecturer" id="lecturer"><br><br>
	
	<label for="week">강좌요일</label> :
	<input type="number" name="week" id="week"><br><br>
	
	<label for="start_hour">시작시간</label> :
	<input type="number" name="start_hour" id="start_hour"><br><br>
	
	<label for="end_end">끝시간</label> :
	<input type="number" name="end_end" id="end_end"><br><br>
	
	<input type="submit" value="강좌등록"> &nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" value="취소">
	
	</form>


</body>
</html>