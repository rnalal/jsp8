<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://127.0.0.1:3308/company";
	String user = "root";
	String pass = "1234";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from course_tbl";
			try {
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
			<a href=index.jsp>메인 페이지</a>	
			<a href=MariaWebInsert.jsp>강좌추가</a>	
	</nav>
	<hr>
	<table>
	<thead>
		<tr>
			<th>강좌번호</th>
			<th>강좌이름</th>
			<th>학점</th>
			<th>강사번호</th>
			<th>강좌요일</th>
			<th>시작시간</th>
			<th>끝시간</th>
		</tr>
	</thead>
<%
		while(rs.next()){
%>		
	
	<tbody>
		<tr>
			<td>
			<a href="MariaWebUpdate.jsp?id=<%=rs.getString("id")%>">
			<%=rs.getString("id") %></a>
			</td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getInt("credit") %></td>
			<td><%=rs.getString("lecturer") %></td>
			<td><%=rs.getInt("week") %></td>
			<td><%=rs.getInt("start_hour") %></td>
			<td><%=rs.getInt("end_end") %></td>
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