<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	String passId = "";
	
	try{
		Class.forName(driver);
		try{
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update member set pw=?, name=?, age=?, tel=?, email=?, addr=? where id=?";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pw);
				pstmt.setString(2, name);
				pstmt.setInt(3, age);
				pstmt.setString(4, tel);
				pstmt.setString(5, email);
				pstmt.setString(6, addr);
				pstmt.setString(7, id);
				int n = pstmt.executeUpdate();
				if(n>0){
						response.sendRedirect("mypage.jsp?id="+id);					
				} else {
					response.sendRedirect("member_mod.jsp?id="+id);
				}
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