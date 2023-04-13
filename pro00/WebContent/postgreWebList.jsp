<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
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
			sql = "select * from cars";
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
	<hr>
		<nav>
			<a href="index.jsp">메인페이지</a>
		</nav>
	<hr>
	<table>
	<thead>
		<tr>
			<td>아이디</td>
			<td>제조사</td>
			<td>모델명</td>
			<td>연식</td>
			<td>색상</td>
			<td>생산일</td>
		</tr>
	</thead>
	
	<tbody>
<%
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getInt("id") %></td>
			<td><%=rs.getString("maker") %></td>
			<td><%=rs.getString("model") %></td>
			<td><%=rs.getInt("year") %></td>
			<td><%=rs.getString("color") %></td>
			<td><%=rs.getDate("created_at") %></td>
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