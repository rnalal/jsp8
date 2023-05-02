<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>   
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = request.getParameter("id");
	String f_title = request.getParameter("f_title");
	String f_content = request.getParameter("f_content");
	
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
			sql = "insert into faq values (default, ?, ?, ?, default)";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, f_title);
				pstmt.setString(2, f_content);
				pstmt.setString(3, id);
				int n = pstmt.executeUpdate();
				if(n>0){
						response.sendRedirect("./faq.jsp");					
				} else {
					response.sendRedirect("./board/sub6.jsp");
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