<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	// int a를 string으로 변환
	// int a = 1004;
	// String b = a + "";
	
	int id = Integer.parseInt(request.getParameter("id"));
	String maker = request.getParameter("maker");
	String model = request.getParameter("model");
	int year = Integer.parseInt(request.getParameter("year"));
	String color = request.getParameter("color");
	String created_at = request.getParameter("created_at");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/sample";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	int a = 0;
	try{
		Class.forName(driver);
		try{		
			conn = DriverManager.getConnection(url, user, pass);
			sql = "insert into cars values (default, ?, ?, ?, ?, default)";
			try{
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				pstmt.setString(2, maker);
				pstmt.setString(3, model);
				pstmt.setInt(4, year);
				pstmt.setString(5, color);
				pstmt.setString(6, created_at);
				
				a = pstmt.executeUpdate();
				
				if(a>0){
					System.out.println("제품등록 성공");
				} else {
					System.out.println("제품등록 실패");
				}
				pstmt.close();
				conn.close();
				response.sendRedirect("postgreWebInsert.jsp");
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