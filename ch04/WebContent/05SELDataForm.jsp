<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<%@ page import ="ch04.Human" %> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.msg { clear:both; width:1080px; height:auto; margin:40px auto; }
	.msg:after { content:""; display:block; width:100%; clear:both; }
</style>
</head>
<body>
<%
	String irum = "전재영";
	int nayi = 1004;
	int num1 = 90, num2 = 80, num3 = 100;
	
	Human h1 = new Human();
	h1.setCountry("KOREAN");
	h1.setName("전재영");
	h1.setAge(25);
	h1.setHobby("베이킹하기");
	
	Human h2 = new Human();
	h2.setCountry("KOREAN");
	h2.setName("김도도");
	h2.setAge(20);
	h2.setHobby("음악듣기");
	
	List<Human> hList = new ArrayList<Human>();
	hList.add(h1);
	hList.add(h2);
	
	request.setAttribute("irum", irum);
	request.setAttribute("nayi", nayi);
	request.setAttribute("num1", num1);
	request.setAttribute("num2", num2);
	request.setAttribute("num3", num3);
	request.setAttribute("hList", hList);
	
	//EL을 사용한다면, 데이터 바인딩을 일일히 수작업할 필요가 없다.
	//위 내용은 서블릿에서 전송데이터를 닫고, 아래는 받아서 출력하기 위한 문장임.
%>
<div class="msg">
	<h2>Expression Language(표현 언어)</h2>
	<p>표현식보다 더 간결하고, 전송 객체를 쉽게 다룰 수 있도록 표현하여 처리하는  언어로서 태그와 혼용이 쉽다.</p>
	<hr>
	<h3>표현식(Expression)과 표현 언어(Expression Language) 비교</h3>
	<p>만약, 전송된 데이터를 출력하려면, 별도의 데이터 바인딩 과정이 필요하다.</p>
	<p>이름 - ${irum } <%=irum %></p>
	<p>나이 - ${nayi } <%=nayi %></p>
	<p>점수1 - ${num1 } <%=num1 %></p>
	<p>점수2 - ${num2 } <%=num2 %></p>
	<p>점수3 - ${num3 } <%=num3 %></p>
	<hr>
	<h4>표현어와 반복문 이용</h4>
<%
	if(hList != null){
		for(Human hu : hList) {
			pageContext.setAttribute("hu", hu);
%>	
	<p>국가명 : ${hu.getCountry() }</p>
	<p>이름 : ${hu.getName() }</p>
	<p>나이 : ${hu.getAge() }</p>
	<p>취미 : ${hu.getHobby() }</p>
<%
		}
	}
%>	
	<br>
	<h4>표현어(EL)와 자바표준태그라이브러리(JSTL)의 반복문인 forEach문 이용 </h4>
<c:forEach var="hu" items="${hList }" varStatus="status">
	<p>연번 : ${status.count }</p>
	<p>국가명 : ${hu.country }</p>
	<p>이름 : ${hu.name }</p>
	<p>나이 : ${hu.age }</p>
	<p>취미 : ${hu.hobby }</p>
</c:forEach>		
</div>
<%
	pageContext.setAttribute("pname", "전재영");
	request.setAttribute("ranme", "김도도");
	session.setAttribute("sname", "이레레");
	application.setAttribute("aname", "박미미");
%>
<div class="msg">
	<h2>EL 폼 데이터 전송 연습</h2>
	<form action="05ELParam.jsp" method="post">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id"><br><br>
	당신이 좋아하는 스포츠는 무엇입니까?<br>
	<input type="checkbox" id="hobby1" name="hobby" value="축구">
	<label for="hobby1">축구</label><br>
	<input type="checkbox" id="hobby2" name="hobby" value="야구">
	<label for="hobby1">야구</label><br>
	<input type="checkbox" id="hobby3" name="hobby" value="배구">
	<label for="hobby1">배구</label><br>
	<input type="checkbox" id="hobby4" name="hobby" value="농구">
	<label for="hobby1">농구</label><br>
	<input type="checkbox" id="hobby5" name="hobby" value="피구">
	<label for="hobby1">피구</label><br>
	<input type="submit" value="확인" class="btn btn-primary">
	</form>
</div>
</body>
</html>