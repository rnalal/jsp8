<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import="com.example.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01JSTL1 - jst1 basic</title>
<link rel="stylesheet" href="table_form_common.css">
</head>
<body>
<div class="msg">
	<!-- 01. 출력문 -->
	<h2 class="title">출력문(c:out) : <c:out value="김도도" /></h2>
	<br>
	<!-- 02. 변수 선언문 -->
	<h2 class="title">
		변수 선언문(c:set)
		<c:set var="name" value="전재영" />
		<c:out value="${name }" />	
	</h2>
	<br>
	<!-- 03. 임포트문 -->
	<h2 class="title">
	클래스 임포트 문(c:import)
	<c:import url="com.example.*" />
	</h2>
	<h2 class="title">
		파일 임포트 문(c:import)
		<c:import url="${filename1 }">
			<c:set var="filename1" value="header.jsp" />
		</c:import>	 
	</h2>
	<br>
	<!-- 04. scope가 필요한 변수 설정 -->
	<h2 class="title">
	4. SCOPE 전역 변수 선언문(c:set)
		<c:set var="filename2" scope="session" value="header.jsp" />
		<c:set var="age" scope="application" value="42" />
	</h2>
	<br>
	<!-- 05. 조건 분기문 -->
	<h2 class="title">
	5. 조건 분기문(c:if)
		<c:if test="${age >= 20 }">
			<c:out value="성년"/>
		</c:if>
		<c:if test="${age < 20 }">
			<c:out value="미성년"/>
		</c:if>		
	</h2>
	<br>
	<!-- 06. 변수나 객체 제거문 -->
	<h2 class="title">
	6. 변수(객체 포함) 제거문(c:remove)
		<c:remove var="age" />
	</h2>
	<br>
	<!-- 07. 선택문 -->
	<h2 class="title">
	7. 선택문(c:choose)
		<c:set var="point" value="98" />
		<c:choose>
			<c:when test="${point>=90 }"><span>A</span></c:when>
			<c:when test="${point>=80 }"><span>B</span></c:when>
			<c:when test="${point>=70 }"><span>C</span></c:when>
			<c:otherwise><span>F</span></c:otherwise>
		</c:choose>	
	</h2>
	<br>
	<!-- 08. 반복문 -->
	<h2 class="title">8. 반복문(c:forEach)</h2>
	<ul class="lst">
		<c:forEach items="${hList }" var="h" varStatus="status">
			<li>
				<span>${status.count }</span>
				<span>${h.country }</span>
				<span>${h.name }</span>
			</li>
		</c:forEach>	
	</ul>
	<br>
	<!-- 09. 구분자가 있는 토큰의 반복 실행문 -->
	<h2 class="title">9. 구분자가 있는 토큰의 반복 실행문(c:forToken)</h2>
	<c:forTokens items="이도도-조레레-손미미-이파파" delims="-" var="name">
	<p>이름 : ${name }</p>
	</c:forTokens>
	<hr>
	<c:forTokens items="김도도/이레레*이미미  박솔솔" delims="/*" var="name">
		<p>이름 : ${name }</p>
	</c:forTokens>
	<br>
	<!-- 10. 특정 URL에 데이터를 대입하거나 이동시킬 수 있는 연관문 -->
	<h2 class="title">10. 연관문(c:url)</h2>
	<c:url value="jspdata.jsp">
		<c:param name="id" value="admin" />
		<c:param name="pw" value="1234" />
	</c:url>		
</div>    
</body>
</html>