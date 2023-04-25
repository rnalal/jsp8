<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<%@ page import="dto.Student" %>  
  
<%!
/*
	class Student{
		public int sno;
		public String sname;
		public int point;
	}
*/
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java 객체 제어</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.title { text-align: center;}
	#tbl, .msg {width:600px; margin: 0 auto;}
</style>
</head>
<body>
<%
	Student s1 = new Student();
	s1.sno = 1;
	s1.sname = "전재영";
	s1.point = 100;
	request.setAttribute("s1", s1);
	
	ArrayList<String> lst1 = new ArrayList<>();
	lst1.add("전재영");
	lst1.add("박레레");
	lst1.add("이미미");
	lst1.add("임파파");
	lst1.add("서솔솔");
	request.setAttribute("lst1", lst1);	//리스트를 한꺼번에 request 객체에 담기
	request.setAttribute("lst12", lst1.get(3));	//특정 번째 요소만 request객체에 담기 -- get()에서 ()안에 숫자는 인덱스번호
	
	HashSet<String> lst2 = new HashSet<>();
	lst2.add("박라라");
	lst2.add("이시시");
	lst2.add("김도레");
	lst2.add("서라시");
	request.setAttribute("lst2", lst2);		//셋을 한꺼번에 request에 담기
	
	HashMap<String, String> map = new HashMap<>();
	map.put("t1", "문레미");
	map.put("t2", "차파솔");
	map.put("t3", "구미솔");
	map.put("t4", "이미파");
	map.put("t5", "박솔라");
	request.setAttribute("map", map);	//맵을 한꺼번에 request에 담기
	request.setAttribute("map2", "t2");	//맵에서 특정 키에 해당하는 것만 request에 담기
	//out.println("<a href='test3.jsp?map="+map+"'></a>");	//클릭시 해당 페이지로 이동
	RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");	//보내질 곳 지정
	rd.forward(request, response);	//url은 안 바뀌면서 test3.jsp에 내용을 포워딩하여 출력
	//reponse.sendRedirect("test3.jsp?map="+map);	//해당 페이지로 이동	
%>
<div class="msg">
	<h1 class="title">자바 객체 데이터를 전송합니다.</h1>
</div>
</body>
</html>
















