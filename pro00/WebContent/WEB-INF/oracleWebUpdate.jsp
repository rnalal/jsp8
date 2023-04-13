<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강 신청 정보 수정</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String c_no = request.getParameter("c_no");
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pass = "1234";
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		String c_name="";
		String phone="";
		String address="";
		int seq = 0;
			try{
				Class.forName(driver);
				try{
					conn = DriverManager.getConnection(url, user, pass);
					sql = "select * from tbl_member_202201 where c_no=?";
					try{
						pstmt = conn.prepareStatement(sql);
						pstmt.setString(1, c_no);
						rs = pstmt.executeQuery();
						if(rs.next()){
							phone = rs.getString("phone");
							address = rs.getString("address");
							seq = rs.getInt("member_seq");
							c_name = rs.getString("c_name");
						} 
						rs.close();
						pstmt.close();
						conn.close();
					}catch(SQLException e){
							System.out.println("SQL 전송 실패");
						}						
					} catch(SQLException e){
						System.out.println("데이터베이스 연결 실패");
					}
				} catch(ClassNotFoundException e){
					System.out.println("드라이버 로딩 실패");
				}
	%>

	<form action="oracleUpdatePro.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th>수강코드</th><td><%=c_no %></td>
					<th>이름</th><td><%=c_name %></td>
					<th>번호</th><td><%=phone %></td>
					<th>주소</th><td><%=address %></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>