<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	
	String id = "";
	String name = "";
	if(session.getAttribute("id")!=null) {
		id = (String) session.getAttribute("id");
		name = (String) session.getAttribute("name");
	}
	String path1 = request.getContextPath();
%>
        <header class="hd">
            <nav class="tnb">
                <div class="tnb_wrap">
                    <ul class="left_tnb">
<%
	if(id.equals("young") && id != "") {
%>
						<li><a href="<%=path1 %>/young/index.jsp">관리자</a></li> 
<%
	}
%>
<% if(id != "") { %>
                        <li><a href="<%=path1 %>/mypage.jsp">마이페이지</a></li>  
                        <li><a href="<%=path1 %>/logout.jsp">로그아웃</a></li>
<% } else if(!(id.equals("young"))){ %>
                        <li><a href="<%=path1 %>/login.jsp">로그인</a></li>
                        <li><a href="<%=path1 %>/agreement.jsp">회원가입</a></li>
<% } %>

                        
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
                            <li><a href="<%=path1 %>/young/member_manage.jsp">회원 관리</a></li>
                            <li><a href="<%=path1 %>/young/board_manage.jsp">게시판 관리</a></li>
                            <li><a href="">경영 정보 관리</a></li>
                            <li><a href="">투자정보 관리</a></li>
                            <li><a href="">채용관리</a></li>
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