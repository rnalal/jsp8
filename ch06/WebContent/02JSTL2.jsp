<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02JSTL2 - jst1 fmt</title>
<link rel="stylesheet" href="table_form_common.css">
</head>
<body>
<div class="msg">
	<h1 class="title">JSTL(Java Standard Tag Library) : 자바 표준 태그 라이브러리 fmt(format)</h1>
	<c:set var="num" value="1234567.88765"/>
	<c:set var="data" value="3,650" />
	<c:set var="su1" value="0" />
	<c:set var="su2" value="4" />
	<c:set var="today" value="<%=new Date() %>" />

	<!-- 01. parseNumber 문 -->
	<h2 class="title">01. 숫자 데이터 변환문(fmt:parseNumber)</h2>
	<p><fmt:parseNumber value="${data }" pattern="0,000" var="num2" /></p>
	<p>1년은 ${num2*24/10 }시간</p>
	<br>
	<hr>
	<!-- 02. formatNumber 문 -->
	<h2 class="title">02. 숫자 표시형식 지정문(fmt:formatNumber)</h2>
	<h3>groupingUsed 속성</h3>
	<p><fmt:formatNumber value="${num }" groupingUsed="true" /></p>
	<p><fmt:formatNumber value="${su1 }" groupingUsed="true" /></p>
	<p><fmt:formatNumber value="${su2 }" groupingUsed="true" /></p>
	<hr>
	<h3>pattern 속성 : 숫자 코드(#, 0)</h3>
	<!-- 남은 자릿수 무시: # -->
	<p>num : <fmt:formatNumber value="${num }" pattern="#.##" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="#.##" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="#.##" /></p>
	<br>
	<!-- 남은 자릿수 채움 : 0 -->
	<p>num : <fmt:formatNumber value="${num }" pattern="000000.00" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="000000.00" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="000000.00" /></p>
	<br>
	<!-- 천단위 구분 : #,##0 -->
	<p>num : <fmt:formatNumber value="${num }" pattern="#,##0" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" pattern="#,##0" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" pattern="#,##0" /></p>
	<p>num : <fmt:formatNumber value="${num }" pattern="\ #,##0" /></p>
	<br>
	<hr>
	<h3>type 속성: percent, currency</h3>
	<p>num : <fmt:formatNumber value="${num }" type="percent" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="percent" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="percent" /></p>
	<br>
	<fmt:setLocale value="ko_kr" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatNumber value="${today }" type="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	<fmt:setLocale value="ja_JP" />
	<p>num : <fmt:formatNumber value="${num }" type="currency" /></p>
	<p>su1 : <fmt:formatNumber value="${su1 }" type="currency" /></p>
	<p>su2 : <fmt:formatNumber value="${su2 }" type="currency" /></p>
	<p>시간 : <fmt:formatNumber value="${today }" type="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
	<br>
	
	<c:set var="ori_date" value="2023-05-03" />
	<c:set var="ori_time" value="16:45:37" />
	<c:set var="today2" value="<%=new Date() %>" />
	<!-- 03. parseDate 문 -->
	<h2 class="title">03. 날짜 데이터 변환문(fmt:parseDate)</h2>
	<fmt:parseDate value="${ori_date }" pattern="yyyy-MM-dd" var="datel" />
	<fmt:parseDate value="${ori_time }" pattern="HH:mm:ss" var="time1" />
	<p>문자열을 날짜 데이터로 : ${date1 }</p>
	<p>문자열을 시간 데이터로 : ${time1 }</p>
	<br>
	<hr><br><hr>
	
	
</div>    
</body>
</html>