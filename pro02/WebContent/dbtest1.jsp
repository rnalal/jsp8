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
			<td>
			<a href='postgreWebUpdate.jsp?id=<%=rs.getString("id")%>'>
			<%=rs.getString("name") %></a></td>
			<td><%=rs.getString("maker") %></td>
			<td><%=rs.getString("model") %></td>
			<td><%=rs.getInt("year") %></td>
			<td><%=rs.getString("color") %></td>
			<td><%=rs.getString("created_at") %></td>
			
			<!-- rs.getString할때 컬럼명이 중복되거나, 너무 길면 as로 지정가능 
			예) select a.c_name as cname, b_class_area as carea from tbl_member a inner join tbl_course b on a.con=b.c_no;
			
			rs.getString("cname");
			rs.getString("carea"); 
			 -->
			 
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