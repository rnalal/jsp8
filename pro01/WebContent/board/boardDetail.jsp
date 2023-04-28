<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
		String pid = "";
		if(session.getAttribute("id")!=null){
			pid = (String) session.getAttribute("id");
		}
		String path = request.getContextPath();
		
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost/pro1";
		String user = "postgres";
		String pass = "1234";
		int boid = Integer.parseInt(request.getParameter("boid"));
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String compId = "";
		String sql = "";	
		try{
			Class.forName(driver);
			try{
				conn = DriverManager.getConnection(url, user, pass);
				sql = "select board.boid as boid, board.title as title, board.content as content, member.name as name, board.bodate as bodate, board.author as author from board, member where board.author=member.id and board.boid=?";
				try{
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, boid);
					rs = pstmt.executeQuery();
		
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 게시판 목록 테스트</title>
	<mata charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <meta name="subject" content="CJ프레시웨이 벤치마킹 사이트">
    <meta name="keywords" content="삼양식품">
    <meta name="description" content="식품으로 인간 백세시대를 열겠다는 故전중윤 선대회장의 뜻을 이어받아 1960년대 식량난 극복과
    1970년대 식생활 개선에 앞장섰으며, 현재는 한국의 맛과 문화를 담은 제품으로 한국 식품의 우수성을
    전 세계에 알리며 글로벌 종합식품기업으로 도약하고 있습니다.">
    <meta name="author" content="jy">

    <link rel="shortcut icon" href="">

    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 삼양식품">
    <meta name="og:description" content="식품으로 인간 백세시대를 열겠다는 故전중윤 선대회장의 뜻을 이어받아 1960년대 식량난 극복과
    1970년대 식생활 개선에 앞장섰으며, 현재는 한국의 맛과 문화를 담은 제품으로 한국 식품의 우수성을
    전 세계에 알리며 글로벌 종합식품기업으로 도약하고 있습니다.">
    <meta name="og:url" content="https://rnalal.github.io/web1/">
    <meta name="og:image" content="./images/thumbnail.png">

    <!--기본 폰트 및 초기화 로딩-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <style>
   .vs { height:40vh; }
    .content { background-image: url("../images/top_career.jpg"); }
	table { display:table; width:900px; margin:10px auto; 
	border-bottom:1px solid #333; 
	border-collapse:collapse; }
	tr { display:table-row; }
	th, td { display:table-cell; border-top:1px solid #333;
	text-align:center; line-height:36px; }
	th { background-color:#ffc65d; color:#333; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }

    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #ffa600 0%, #ffa600 100%); 
        background: -webkit-linear-gradient(top, #ffa600 0%,#ffa600 100%); 
        background: linear-gradient(to bottom, #ffa600 0%,#ffa600 100%); color:#333; }
    .btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
        background: -webkit-linear-gradient(top, #ffcf76 0%,#ffcf76 44%,#ffcf76 100%); 
        background: linear-gradient(to bottom, #ffcf76 0%,#ffcf76 44%,#ffcf76 100%);
        color:#333;
    }
    .page_tit { text-align:center; font-size:32px; padding-bottom:50px; }
    .page_wrap {padding-top:30px;}
    </style>
</head>
<body>
	<div class="container">
		<%@ include file="../header.jsp" %>
		<div class="content">
			<figure class="vs">
				<div class="img_box">
					<h1 class="tit">고객지원</h1>
				</div>
			</figure>
			<section class="page" id="page1">
				<h2 class="page_tit">공지사항 상세보기</h2>
				<table>
					<tbody>
<%
						if(rs.next()){
							compId = rs.getString("author");
%>					
						<tr>
							<th>글 번호</th>
							<td><%=rs.getInt("boid") %></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><%=rs.getString("title") %></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><%=rs.getString("content") %></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><%=rs.getString("name") %></td>
						</tr>
						<tr>
							<th>작성일</th>
							<td><%=rs.getString("bodate") %></td>
						</tr>
<%
						}
%>						
						<tr>
							<td colspan="2">
								<a href="<%=path %>/board/sub6.jsp#page4" class="btn btn-primary">글 목록</a>
<% 
							if(pid.equals(compId) || pid.equals("young")){
%>								
								<a href="<%=path %>/board/boardUpdate.jsp?boid=<%=boid %>" class="btn btn-primary">글 수정</a>
								<a href="<%=path %>/board/boardDel.jsp?boid=<%=boid %>" class="btn btn-cancle">삭제</a>
<%
							}
%>								
							</td>
						</tr>
					</tbody>
					
				</table>
			</section>
		</div>
		<%@ include file="../footer.jsp" %>
		</div>					
<%
							rs.close();
							pstmt.close();
							conn.close();
					} catch(SQLException e){
						System.out.println("SQL 전송 실패");
					}
				} catch(SQLException e){
					System.out.println("데이터베이스 연결 실패");
				}
			}catch(ClassNotFoundException e){
				System.out.println("드라이버 로딩 실패");
			}
%>
</body>
</html>









