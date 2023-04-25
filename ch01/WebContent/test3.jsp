<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	int year = Integer.parseInt(request.getParameter("year"));
	int age = 2023 - year;
	
	String[] pet = request.getParameterValues("pet");
	
	for(int i=0;i<pet.length;i++){
		if (pet[i].equals("dog")){
			pet[i] = "강아지";			
		}else if (pet[i].equals("cat")){
			pet[i] = "고양이";
		}else if (pet[i].equals("cow")){
			pet[i] = "송아지";
		}else {
			pet[i] = "망아지";
		}	
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자세히 보기</title>
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
	<h2 class="title">작성 내용 확인</h2>
		<table class="table" id="tbl">
			<tbody>
				<tr>
					<th>아이디</th>
					<td><%=request.getParameter("id") %></td>
				</tr>
				<tr>
					<th>나이</th>
					<td><%=age %></td>
				</tr>
				<tr>
					<th>출생년도</th>
					<td><%=request.getParameter("year") %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=request.getParameter("name") %></td>
				</tr>
				<tr>
					<th>좋아하는 동물</th>
					<td>
						<ul>
							<% for(int i=0;i<pet.length;i++) { %>
							<li><%=pet[i] %></li>
							<% } %>
						</ul>
					</td>
				</tr>
<%
		String msg = "아이디 : "+request.getParameter("id")+", 이름 : ";
		msg = msg +request.getParameter("name")+", 나이 : "+age;
%>								
				<tr>
					<td colspan="2">
						<a href="test3_form.jsp?msg=<%=msg %>" class="btn btn-primary">설문조사 입력 폼으로</a> &nbsp;&nbsp;&nbsp;&nbsp;
						<a href="test4.jsp?msg=<%=msg %>" class="btn btn-primary">요청 정보 보기</a>
					</td>	
				</tr>
			</tbody>
		</table>
</body>
</html>