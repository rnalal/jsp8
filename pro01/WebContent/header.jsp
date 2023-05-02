<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
	}
	String path1 = request.getContextPath();
%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   	<header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="left_tnb">
                    		<nav class="nav">
								<%
									if(id.equals("young") && id != "") {
								%>
								<a href="<%=path1 %>/young/index.jsp">관리자</a>
								<%
									}
								%>
								<% if(id != "") { %>
								<a href="<%=path1 %>/mypage.jsp">마이페이지</a>
								<a href="<%=path1 %>/logout.jsp">로그아웃</a>
								<% } else if(!(id.equals("young"))){ %>
								<a href="<%=path1 %>/login.jsp">로그인</a>
								<a href="<%=path1 %>/agreement.jsp">회원가입</a>
								<% } %>
							</nav>								
                    </ul>
                    <ul class="right_tnb">
                        <li><a href="https://blog.naver.com/samyangfoods" class="sns1">A1</a></li>
                        <li><a href="https://www.instagram.com/samyangfoods/" class="sns2">A2</a></li>
                        <li><a href="https://www.facebook.com/samyangfoods" class="sns3">A3</a></li>
                        <li><a href="https://twitter.com/samyangfoods" class="sns4">A4</a></li>
                    </ul>
                </div>
            </nav>
            <div class="main">
                <div class="main_wrap">                    
                    <a href="<%=path1 %>/index.jsp" class="logo">
                        <img src="<%=path1 %>/images/logo.png" alt="삼양식품로고">
                    </a>
                    <nav class="gnb">
                        <ul class="gnb_fr">
                           <li><a href="<%=path1 %>/sub1.jsp">회사소개</a>
                                <div class="sub item1">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub1.jsp">삼양식품</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp">사업영역</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp">계열사</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp">해외법인</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp">공장</a></li>
                                        <li><a href="<%=path1 %>/sub1.jsp">오시는길</a></li>
                                    </ul>
                                </div>    
                            </li>
                            <li><a href="<%=path1 %>/sub2.jsp">홍보관</a>
                                <div class="sub item2">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub2.jsp">삼양소식</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp">홍보영상</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp">호치와 친구들</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp">음원/영상</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp">삼양역사관</a></li>
                                        <li><a href="<%=path1 %>/sub2.jsp">레시피</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/sub3.jsp">지속가능경영</a>
                                <div class="sub item3">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub3.jsp">안전보건환경</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp">윤리,인권경영</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp">소비자중심경영</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp">사회공헌</a></li>
                                        <li><a href="<%=path1 %>/sub3.jsp">지배구조</a></li>
                                    </ul>
                                </div>
                            </li> 
                            <li><a href="<%=path1 %>/sub4.jsp">브랜드</a>
                                <div class="sub item4">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub4.jsp">삼양라면</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp">불닭볶음면</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp">짜짜로니</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp">별뽀빠이</a></li>
                                        <li><a href="<%=path1 %>/sub4.jsp">삼양유기농우유</a></li>
                                    </ul>
                                </div>
                            </li>  
                            <li><a href="<%=path1 %>/sub5.jsp">제품</a>
                                <div class="sub item5">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/sub5.jsp">라면</a></li>
                                        <li><a href="<%=path1 %>/sub5.jsp">스낵</a></li>
                                        <li><a href="<%=path1 %>/sub5.jsp">유제품</a></li>
                                        <li><a href="<%=path1 %>/sub5.jsp">소스,간편식</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="<%=path1 %>/board/sub6.jsp">고객지원</a>
                                <div class="sub item6">
                                    <ul class="dp2">
                                        <li><a href="<%=path1 %>/board/sub6.jsp#page1">고객만족센터</a></li>
                                        <li><a href="<%=path1 %>/board/sub6.jsp#page2">고객문의</a></li>
                                        <li><a href="<%=path1 %>/board/sub6.jsp#page3">FAQ</a></li>
                                        <li><a href="<%=path1 %>/board/sub6.jsp#page4">공지사항</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>     
                    </nav>
                    <label for="sitemap_ck" class="sitemap_btn" title="관계 사이트">관계 사이트</label>
                </div>
            </div>
                        <input type="checkbox" id="sitemap_ck">
            <div class="sitemap">
                <div class="sitemap_fr">
                    <label for="sitemap_ck" class="close_btn">닫기</label>
                    <div id="realtedSites">
                        <ul class="selectul">
                            <li class="group">삼양
                                <ul>
                                    <li><a href="<%=path1 %>https://www.samyang.co.kr/kr/index" target="_blank" title="새 창">삼양그룹</a></li>
                                </ul>
                            </li>
                            <li class="group">식품 &amp; 식품서비스
                                <ul>
                                    <li><a href="<%=path1 %>https://brand.naver.com/syfoodshop" target="_blank" title="새 창">삼양맛샵</a></li>
                                    <li><a href="<%=path1 %>https://www.samyangfarm.co.kr/" target="_blank" title="새 창">삼양목장</a></li>
                                    <li><a href="<%=path1 %>http://samyangflour.com/" target="_blank" title="새 창">삼양제분</a></li>
                                    <li><a href="<%=path1 %>/" class="self">삼양식품</a></li>
                                </ul>
                            </li>
                            <li class="group">화학 &amp; 화학사업
                                <ul>
                                    <li><a href="<%=path1 %>https://www.samyangcorp.com/kr/index" target="_blank" title="새 창">삼양사</a></li>
                                    <li><a href="<%=path1 %>https://www.samnam.co.kr/kr/index" target="_blank" title="새 창">삼남석유화학</a></li>
                                    <li><a href="<%=path1 %>https://www.samyangkasei.com/kr/index" target="_blank" title="새 창">삼양화성</a></li>
                                    <li><a href="<%=path1 %>https://www.samyanginnochem.com/kr/index" target="_blank" title="새 창">삼양이노켐</a></li>
                                    <li><a href="<%=path1 %>https://www.samyangfinetechnology.com/kr/index" target="_blank" title="새 창">삼양화인테크놀로지</a></li>
                                    <li><a href="<%=path1 %>https://www.kciltd.com/kr/index" target="_blank" title="새 창">KCI</a></li>
                                    <li><a href="<%=path1 %>https://www.ncchem.co.kr/kr/index" target="_blank" title="새 창">엔씨켐</a></li>
                                </ul>
                            </li>
                            <li class="group">재단
                                <ul>
                                    <li><a href="<%=path1 %>http://www.sy-igdream.or.kr/" target="_blank" title="새 창">삼양이건장학재단</a></li>
                                    <li><a href="<%=path1 %>http://www.samyangmotivef.or.kr/" target="_blank" title="새 창">삼양원동문화재단</a></li>
                                </ul>
                            </li>
                            <li class="group">의약바이오
                                <ul>
                                    <li><a href="<%=path1 %>https://samyangbiopharm.com/kr/index" target="_blank" title="새 창">삼양홀딩스 바이오팜그룹</a></li>
                                </ul>
                            </li>
                        </ul>  
                    </div>
                </div>
            </div>
        </header>    
</body>
</html>