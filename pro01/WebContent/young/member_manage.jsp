<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String pid = "";
	if(session.getAttribute("id")!=null){
		pid = (String) session.getAttribute("id");
	}
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오 - 삼양식품</title>

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
	th { background-color:#333; color:#fff; }
    .table { width:900px; margin:4px auto; padding-top:20px;  }
    .lb { display:block;  font-size:20px; }
    .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
    .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
         text-align: center; padding:10px 20px;  cursor:pointer; }
    .btn-primary { background: -moz-linear-gradient(top, #ffa600 0%, #ffa600 100%); 

        background: -webkit-linear-gradient(top, #ffa600 0%,#ffa600 100%); 
        background: linear-gradient(to bottom, #ffa600 0%,#ffa600 100%); color:#fff; }
    .btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
        background: -webkit-linear-gradient(top, #ffcf76 0%,#ffcf76 44%,#ffcf76 100%); 
        background: linear-gradient(to bottom, #ffcf76 0%,#ffcf76 44%,#ffcf76 100%);
        color:#fff;
    }
    .page_tit { text-align:center; font-size:32px; padding-top:80px; padding-bottom:30px; }
    .tb_wrap { clear:both; width:900px; margin:10px auto; border-top:2px solid #333; padding-top:15px; }
   	.detail { display:block; text-align:center; max-width:120px; min-width:90px; padding:12px; font-size:24px; background-color: #ffa600;
   	color:#fff; border-radius:30px; margin:42px auto; }
   	#page2, #page4 { background-color:rgba(240,240,240,0.8); }
   	.table.dataTable thead>tr>th { text-align:center; }
   	.gnb:hover > ul > li:before { visibility:hidden;}
</style>
</head>
<body>
    <div class="container">
		<%@ include file="./young_header.jsp" %>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">관리자 페이지</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">회원관리</h2>
                <div class="tb_wrap">
					<table class="table" id="tb1">
						<thead>
							<tr><th>연번</th><th>아이디</th><th>회원명</th><th>연락처</th><th>가입일</th><th>직권 탈퇴</th></tr>
						</thead>
						<tbody>
</body>
<%

		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost/pro1";
		String user = "postgres";
		String pass = "1234";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		String kid = "";
		int i = 0;
		try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url, user, pass);
				sql = "select * from member order by mdate desc";
				try {
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();	
						if(rs==null){
%>
							<tr><td colspan="5">회원이 존재하지 않습니다.</td></tr>
<%							
						}	
						while(rs.next()){
							++i;
							kid = rs.getString("id");
%>
							<tr>
								<td><%=i %></td>
								<td><%=kid %></td>
								<td>
									<a href='<%=path %>/young/memberDetail.jsp?id=<%=kid %>'><%=rs.getString("name") %></a>
								</td>
								<td><%=rs.getString("tel") %></td>
								<td><%=rs.getString("mdate") %></td>
								<td>
									<% if(!kid.equals("young")) { %>
									<a href='<%=path %>/young/member_del.jsp?id=<%=kid %>' class="btn btn-primary">탈퇴</a>
									<% } %>
								</td>
							</tr>
<%							
						}
%>	
						</tbody>
					</table>
					<div class="grp_btn" style="width:1280px; margin:20px auto;">
<%
							if(pid.equals("young")){
%>						
						<a href="<%=path %>/young/memberinsert.jsp" class="btn btn-primary">회원 직권 등록</a>
<%
							} else {
%>
						<h3 class="data">현재 사용자는 관리자가 아닙니다.</h3>
<%
							}
%>
					</div>
<%
				rs.close();
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 전송 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패~!");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>
				</div>
				<script>
				$(document).ready(function(){
				    $('#tb1').DataTable({'order': [[0, 'desc']]});
				});
				</script>
			</section>
		</div>
        <%@ include file="../footer.jsp" %>
	</div>
</body>
</html>
