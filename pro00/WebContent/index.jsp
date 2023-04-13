<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String name = "재영";
	int age = 10;
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<h1>메인 페이지</h1>
	<h2>저의 이름은 <%=name %>이며, 나이는  <%=age %>세 입니다.</h2>
	<p>여기는 메인 페이지 테스트 문장 구간입니다.</p>
	<nav>
		<ul>
			<li><span>오라클</span>
				<ul>
					<li><a href="oracleWebList.jsp"> 목록 보기</a></li>
					<li><a href="oracleWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>마이에스큐엘</span>
				<ul>
					<li><a href="mySqlWebList.jsp">목록 보기</a></li>
					<li><a href="mySqlWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>마리아DB</span>
				<ul>
					<li><a href="MariaWebList.jsp">목록 보기</a></li>
					<li><a href="MariaWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
			<li><span>포스트그리</span>
				<ul>
					<li><a href="postgreWebList.jsp">포스트그리 목록 보기</a></li>
					<li><a href="postgreWebInsert.jsp">데이터 추가하기</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</body>
</html>