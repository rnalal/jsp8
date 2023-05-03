<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:param name="name" value="전재영" />
<jsp:param name="hd" value="header.jsp" />
<jsp:param name="ft" valud="footer.jsp" /> --%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
%>
<%
	String name = "전재영";
	String hd = "header.jsp";
	String ft = "footer.jsp";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09IncludeFileData</title>
<link rel="stylesheet" href="table_form_common.css">
<style>
</style>
</head>
<body>
<div class="msg">
	<jsp:include page="<%=hd %>" />
</div>
<hr>
<jsp:include page="09include.jsp">
	<jsp:param name="name" value="전재영" />
</jsp:include>	
<a href="09include.jsp?name=<%=name %>" class="btn btn-check">데이터 전송</a>
<hr>
<div class="msg">
	<jsp:include page="<%=ft %>" />
</div>
</body>
</html>