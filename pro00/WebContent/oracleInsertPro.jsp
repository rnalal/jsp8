<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
    
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");

	String c_no = request.getParameter("c_no");
	String c_name = request.getParameter("c_name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String regist_date = request.getParameter("regist_date");
	String c_type = request.getParameter("c_type");
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;	
	String sql = "";
	int a = 0;
	try {
	Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "insert into tbl_member_202201 values(member_seq.nextval, ?, ?, ?, ?, ?, ?)";	
			
				try{	
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, c_no);
					pstmt.setString(2, c_name);
					pstmt.setString(3, phone);
					pstmt.setString(4, address);
					pstmt.setString(5, regist_date);
					pstmt.setString(6, c_type);	
					
					a = pstmt.executeUpdate();					
					if(a>0){
						System.out.println("수강생 등록 성공");
					} else {
						System.out.println("수강생 등록 실패");
					}
					
					pstmt.close();
					conn.close();					
					response.sendRedirect("oracleWebInsert.jsp");
					
				}catch(SQLException e) {
					System.out.println("SQL 전송 실패");
				}
			} catch(SQLException e) {
				System.out.println("데이터베이스 연결 실패");
			}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패");
	}
	
%>    
