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
			sql = "select * from member";
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
	<h2>회원목록</h2>
	<hr>
	<table>
	<thead>
		<tr>
			<td>회원명</td>
			<td>전화번호</td>
			<td>이메일</td>
		</tr>
	</thead>
	
	<tbody>
<%
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("tel") %></td>			 
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