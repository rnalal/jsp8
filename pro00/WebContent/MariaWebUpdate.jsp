<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String id = request.getParameter("id");
		
		String driver = "org.mariadb.jdbc.Driver";
		String url = "jdbc:mariadb://127.0.0.1:3308/company";
		String user = "root";
		String pass = "1234";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "";
		String name = "";
		int credit=0;
		String lecturer = "";
		int week=0;
		int start_hour=0;
		int end_end=0;
		
		try{
			Class.forName(driver);
			try{
				conn = DriverManager.getConnection(url, user, pass);
				sql = "select * from course_tbl where id=?";
				try{
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					if(rs.next()){
						id = rs.getString("id");
						name = rs.getString("name");
						credit = rs.getInt("credit");
						lecturer = rs.getString("lecturer");
						week = rs.getInt("week");
						start_hour = rs.getInt("start_hour");
						end_end = rs.getInt("end_end");
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
	<form action="MariaUpdatePro.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th>강좌번호</th>
					<td><input type="text" name="id" value="<%=id %>" readonly></td>	
				</tr>
				<tr>
					<th>강좌이름</th>
					<td><input type="text" name="name" value="<%=name %>" required></td>	
				</tr>
				<tr>
					<th>학점</th>
					<td><input type="number" name="credit" value="<%=credit %>" required></td>	
				</tr>
				<tr>
					<th>강사번호</th>
					<td><input type="text" name="lecturer" value="<%=lecturer %>" required></td>	
				</tr>
				<tr>
					<th>강좌요일</th>
					<td><input type="number" name="week" value="<%=week %>" required></td>	
				</tr>
				<tr>
					<th>시작시간</th>
					<td><input type="number" name="start_hour" value="<%=start_hour %>" required></td>	
				</tr>
				<tr>
					<th>끝시간</th>
					<td><input type="number" name="end_end" value="<%=end_end %>" required></td>	
				</tr>
				<tr><td colspan="2"></td></tr>
				<tr><td colspan="2">
					<input type="submit" value="강좌정보수정"> &nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="취소">
					<a href="MariaWebDel.jsp?id=<%=id %>">강좌삭제</a>
				</td></tr>
			</tbody>			
		</table>	
	</form>	

</body>
</html>
