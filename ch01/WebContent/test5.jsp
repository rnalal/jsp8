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
<title>테스트5</title>
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
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String msg ="";
	//Cookie ck = null;
	
	response.addHeader("Site", "http://okgunyang.github.com");  //request.getHeader("Site");
	response.setHeader("URI2", "http://"); 	//request.getHeader("Url2");
	out.println("<h2>Response+Session 객체 알아보기</h2>");
	if(id.equals("admin") && pw.equals("1234")){	
	//response.addCookie(ck)	//쿠키로 로그인 처리
	//session.invalidate();		//로그아웃 처리
	//session.removeAttribute("id");	//세션 id 지우기 -> 세션객체는 브라우저가 완전히 닫히거나,특정시간 이후에는 완전히 사라짐.
	//session.removeAttribute("pw");	//세션 pw 지우기
	session.setAttribute("id", id);		//세션으로 로그인 처리
	session.setAttribute("pw", pw);
	msg = "로그인 성공";
	//response.setStatus(200);	//정상으로 처리
	//response.sendError(200, "모든 페이지가 정상적으로 처리되었습니다.");
	//response.sendRedirect("test5_form.jsp?msg="+"로그인성공");	//해당 문서로 직접 이동
	} else {
		msg = "로그인 실패";
		//response.setStatus(404);	//실패 처리
		//response.sendError(404, "해당 페이지가 존재하지 않습니다.");
		//response.sendRedirect("test5_form.jsp?msg="+"로그인실패");	//해당 문서로 직접 이동
	}
%>
	<p><a href='test5_form.jsp?msg='<%=msg %> class='btn btn-primary'><%=msg %></a></p>
	<p> 콘텐츠 유형: <%=  response.getContentType() %></p>
	<p> 문자 인코딩: <%=  response.getCharacterEncoding() %></p>
	<p> 추가된 헤더: <%=  response.getHeader("Site") %></p>
	<p> 설정된 헤더: <%=  response.getHeader("Url2") %></p>
	<p> 추가된 헤더 존재 유무 확인: <%=  response.containsHeader("Site") %></p>
	<p> 설정된 헤더 존재 유무 확인: <%=  response.containsHeader("Url2") %></p>
	<p> 저장된 상태코드: <%=  response.getStatus() %></p>
	<p> 저장된 세션정보 아이디: <%=  session.getAttribute("id") %></p>
	<p> 저장된 세션정보 비밀번호: <%=  session.getAttribute("pw") %></p>	
</body>
</html>