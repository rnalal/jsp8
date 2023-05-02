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
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    
    <style>
   .vs { height:40vh; }
   .content {background-image: url("<%=path%>/images/title1.jpg");}
   
   	  #page1 .page_wrap {text-align:center; padding-top: 70px; line-height: 30px;}
   	  #page1 .page_comment {font-size:20px; padding-top:50px; line-height:50px;}
 
      #page2 .grid3 li {text-align: center; box-sizing: border-box; border: 1px solid #eee; height: 500px;}
      #page2 .grid3 .grid_tit {font-size: 28px; font-weight: 200; color: #ff7300; padding-top: 100px;}
      #page2 .grid3 .grid_tit:after {content: "";  display: block; clear: both; width: 80px;
      height: 5px; background-color: #ff9900; margin: 30px auto;}
      #page2 .grid3 .grid_com {padding-top: 14px;}
      #page2 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}
      #page2 .grid3 .grid_tel {font-size: 28px;}
 
      #page3 { background-color:#fff; color:#333; }
      #page3 .tit_box {clear: both; padding-top: 80px; width: 1280px; margin: 0 auto; }
      #page3 .more {display: block; position: absolute; top: 60px; right: 200px; font-size: 68px; font-weight: bolder;
      width: 80px; height: 80px; border: 1px solid #ccc; text-align: center; color: #999; }
      #page3 .board_fr { clear: both; width: 1280px; margin: 0px auto; padding-top: 40px; }
      #page3 .tb1 { clear: both; display: table; border-collapse: collapse;}
      #page3 .tbl tr { display: table-row; width: 1280px;}
      #page3 .tbl td {display: table-cell; min-height: 50px; padding-top: 20px; padding-bottom: 20px;
      border-top: 1px solid #ccc;}
      #page3 .tbl tr:last-child td { border-bottom:1px solid #ccc;}
      #page3 .tbl td.td1 { vertical-align: top; width: 100px; text-align:  left; font-size: 32px;
      color: #ff9900; font-weight: 100;}
      #page3 .tbl td a { display: block; color: #333; transition-duration: 0.4s;}
      #page3 .tbl td a .td_tit { width: 1100px; font-size: 28px; line-height: 1.4; font-weight: 200; padding-right: 20;
      white-space: nowrap; overflow: hidden; text-overflow: ellipsis; text-align:left; }
      #page3 .tbl td a .td_com { width: 1100px; font-size: 18px; line-height: 2.2; font-weight: 100;
      color: #999; padding-right: 36px;
      white-space: nowrap; overflow: hidden; text-overflow: ellipsis; text-align:left;}
      #page3 .tbl td a:hover { color:#ff9900;}
      #page3 .tbl td a:hover .td_com { color:#ff9900;}
      
		#page4 table { display:table; width:900px; margin:10px auto; 
		border-bottom:1px solid #333; 
		border-collapse:collapse; }
		#page4 tr { display:table-row; }
		#page4 th, td { display:table-cell; border-top:1px solid #333;
		text-align:center; line-height:36px; }
		#page4 th { background-color:#ffc65d; color:#333; }
		#page4 .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
		#page4 .lb { display:block;  font-size:20px; }
		#page4 .indata { display:inline-block; width:300px; height:24px; line-height:24px; padding:10px; }
	
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
    .page_tit {padding-top:100px; padding-bottom:30px;}
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
				<h2 class="page_tit">고객만족센터</h2>
					<div class="page_wrap">
                    	<a href=""><img src="<%=path %>/images/sound.jpg" width="600px"  ></a>
                        	<p class="page_comment">고객만족시스템을 통해 접수되는 의견은 품질관리, 연구, 마케팅 등 관련 부서에 전달되며,<br>
                        	전 부문에서 고객의 소리를 적극적으로 반영하고자 노력하고 있습니다.</p>
                </div>							
			</section>
			<section class="page" id="page2">
				<h2 class="page_tit">고객문의</h2>
				   <div class="page_wrap">
                    <article class="grid3">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">무료상담전화</h3>
                                    <h3 class="grid_tel">080-940-3333<br><br></h3>
                                    <p class="grid_com">
					                                        상담시간 :평일 오전9시~오후6시 <br>
					                                        점심시간:오후12시~오후1시 <br>
					                                        토요일,일요일,공휴일 휴무 
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">홈페이지 문의</h3>
                                    <p class="grid_com">
                                    	<button onclick="location.href='<%=path %>/faq.jsp'">문의 바로가기</button >
                                    	
                                    </p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">우편접수</h3>
                                    <p class="grid_com">서울특별시 성북구 오패산로3길 104<br>
                                        (주)삼양식품 고객만족팀
                                    </p>
                                </div>                           
                            </li>
                        </ul>
                    </article>
                </div>				
			</section>
			<section class="page" id="page3">
				<h2 class="page_tit">FAQ</h2>
				    <div class="page_wrap">
                    <a href="<%=path %>/faq.jsp" class="more">+</a>
                    <article class="board_fr">
                        <table class="tbl">
                            <tbody>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">삼양식품</h3>
                                            <p class="td_com">삼양식품은 식물성 건강 브랜드 ‘잭앤펄스(Jack & Pulse)’를 론칭하고, 첫번째 제품으로 식물성 단백질 음료 ‘프로틴드롭(ProteinDrop)’을 출시한다고 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">글로벌 시장 등에 업은 삼양식품, 외형·내실 다 잡았다</h3>
                                            <p class="td_com">불닭으로 세계인의 입맛을 사로잡은 삼양식품이 지난해 해외사업부문의 폭발적인 성장으로 외형과 내실을 모두 챙겼다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">삼양식품, 한-인도수교 50주년 맞아 주인도 대한민국 대사관 행사에 불닭볶음면 등 제품 500박스 협찬</h3>
                                            <p class="td_com">삼양식품은 한국과 인도의 수교 50주년을 기념해 주인도 대한민국 대사관 행사 협찬을 통해 불닭볶음면 등 제품 500박스(14,800개) 현지 기부를 진행하고 있다고 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </section>
			<section class="page" id="page4">
				<h2 class="page_tit">공지사항</h2>
					<table>
						<thead>
							<tr><th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
						</thead>
						<tbody>
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
					sql = "select board.boid as boid, board.title as title, board.content as content, member.name as name, board.bodate as bodate, board.author as author from board, member where board.author=member.id";
					try{
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
							if(rs==null){
%>							
							<tr><td colspan="4">게시글이 존재하지 않습니다.</td></tr>
<%
							}
							while(rs.next()){
%>								
							<tr>
								<td><%=rs.getString("boid") %></td>
								<td>
<%
								if(pid!=""){
%>								
									<a href="<%=path %>/board/boardDetail.jsp?boid=<%=rs.getString("boid") %>"><%=rs.getString("title") %></a>
<%
								} else {
%>									
									<span><%=rs.getString("title") %></span>
<%
								}
%>
								</td>
								<td><%=rs.getString("name") %></td>
								<td><%=rs.getString("bodate") %></td>
							</tr>
<%
					}
%>			
						</tbody>
					</table>
					<div class="grp_btn" style="width:1280px; margin:20px auto;">
<%
							if(pid!=""){
%>					
						<a href="<%=path %>/board/boardinsert.jsp" class="btn btn-primary">글 쓰기</a>	
<%
							} else {
%>					
						<h3 class="data">로그인 후에 글쓰기가 가능합니다.</h3>
<%
							}
%>							
					</div>
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









