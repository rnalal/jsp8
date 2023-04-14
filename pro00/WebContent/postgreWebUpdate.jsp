<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 정보 수정</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql="";
	String maker="";
	String model="";
	int year=0;
	String color="";
	String created_at = "";
	
	int a = 0;
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from cars where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					maker = rs.getString("maker");
					model = rs.getString("model");
					year = rs.getInt("year");
					color = rs.getString("color");
					created_at = rs.getString("created_at");
				}
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e){
				System.out.println("SQL 연결 실패");
			}
		}catch(SQLException e){
			System.out.println("데이터베이스 전송 실패");
		}
	}catch(ClassNotFoundException e){
		System.out.println("드라이브 로딩 실패");
	}
%>

	<form action="postgreUpdatePro.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th>제품번호</th>
					<td><input type="number" name="id" value="<%=id %>" readonly></td>					
				</tr>
				<tr>
					<th>제조사</th>
					<td><input type="text" name="maker" value="<%=maker %>" required></td>					
				</tr>
				<tr>
					<th>모델명</th>
					<td><input type="text" name="model" value="<%=model %>" required></td>					
				</tr>
				<tr>
					<th>연식</th>
					<td><input type="number" name="year" value="<%=year %>" required></td>					
				</tr>
				<tr>
					<th>색상</th>
					<td><input type="text" name="color" value="<%=color %>" required></td>					
				</tr>
				<tr>
					<th>생산일</th>
					<td><input type="text" name="created_at" value="<%=created_at %>" required></td>					
				</tr>
				<tr><td colspan="2"></td></tr>
				<tr><td colspan="2">
				<input type="submit" value="수정"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
				<a href="postgreWebDel.jsp?id=<%=id %>">제품 삭제 </a>
				</td></tr>
			</tbody>
		</table>
	</form>

</body>
</html>

















