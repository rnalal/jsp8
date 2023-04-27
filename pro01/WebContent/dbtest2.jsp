<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url, user, pass);
			// member 테이블의 아름을 불러와서 board 테이블 author에 표시되게 하기
			sql = "select board.boid as boid, board.title as title, board.bodate as bodate, member.name as name from board ";
			try{
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시판목록</h2>
	<hr>
	<table>
	<thead>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성날짜</td>
		</tr>
	</thead>
	
	<tbody>
<%
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getInt("boid") %></td>
			<td><%=rs.getString("title") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("bodate") %></td>		 
		</tr>
	
<%
		}
%>
	</tbody>	
	</table>


</body>
</html>

<%
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e){
				System.out.println("SQL 전송 실패~!");
			}
		}catch(SQLException e){
			System.out.println("데이터베이스 연결 실패~!");
		}
	}catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>