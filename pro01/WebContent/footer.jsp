<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path2 = request.getContextPath();
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <footer class="ft">
             <article class="row_row1">
                <div class="ft_wrap">
                    <nav class="fnb">
                        <ul class="fnb_box">
                            <li><a href="<%=path2 %>">개인정보처리방침</a></li>
                            <li><a href="<%=path2 %>">이용약관</a></li>
                            <li><a href="<%=path2 %>">법적고지</a></li>
                            <li><a href="<%=path2 %>">이메일 무단수집 거부</a></li>
                            <li><a href="<%=path2 %>">온라인 제보</a></li>
                        </ul>
                    </nav>
                    <select name="favo" id="favo" class="favo right" onchange="favo(this)">
                        <option value="">FAMILY SITE</option>
                        <option value="https://brand.naver.com/syfoodshop">삼양맛샵</option>
                        <option value="https://www.samyangfarm.co.kr/">삼양목장</option>
                        <option value="http://www.sy-igdream.or.kr/">삼양이건장학재단</option>
                        <option value="http://www.samyangmotivef.or.kr/">삼양원동문화재단</option>
                        <option value="http://www.samyanglogistics.co.kr/">삼양로지스틱스</option>
                        <option value="http://samyangpruwell.com/">삼양프루웰</option>
                        <option value="http://samyangflour.com/">삼양제분</option>
                    </select>
                    <script>
                        function favo(s){
                            var hs = s.value;
                            if(hs!=""){
                                window.open(hs, "팝업");
                            }
                        }
                    </script>
                </div>
            </article>
            <article class="row row2">
                <div class="ft_wrap">
                    <div class="slogan left">
                        FOOD<br>
                        BUSINESS PARTNER <br>
                        CREATING <br>
                        THE SUCCESS WAY
                    </div>
                    <nav class="ft_link_fr right">
                        <dl class="ft_link item1">
                            <dt>회사소개</dt>
                            <dd><a href="<%=path2 %>sub1.jsp">삼양식품</a></dd>
                            <dd><a href="<%=path2 %>">지주사</a></dd>
                            <dd><a href="<%=path2 %>">계열사</a></dd>
                            <dd><a href="<%=path2 %>">해외법인</a></dd>
                            <dd><a href="<%=path2 %>">공장</a></dd>
                            <dd><a href="<%=path2 %>">오시는길</a></dd>
                        </dl>
                        <dl class="ft_link item2">
                            <dt>홍보관</dt>
                            <dd><a href="<%=path2 %>">삼양소식</a></dd>
                            <dd><a href="<%=path2 %>">홍보영상</a></dd>
                            <dd><a href="<%=path2 %>">호치와 친구들</a></dd>
                            <dd><a href="<%=path2 %>">음원/영상</a></dd>
                            <dd><a href="<%=path2 %>">엠버서더</a></dd>
                            <dd><a href="<%=path2 %>">삼양역사관</a></dd>
                            <dd><a href="<%=path2 %>">레시피</a></dd>
                        </dl>
                        <dl class="ft_link item3">
                            <dt>지속가능경영</dt>
                            <dd><a href="">안전보건환경</a></dd>
                            <dd><a href="">윤리/인권경영</a></dd>
                            <dd><a href="">소비자중심경영</a></dd>
                            <dd><a href="">사회공헌</a></dd>
                            <dd><a href="">지배구조</a></dd>
                        </dl>
                        <dl class="ft_link item4">
                            <dt>브랜드</dt>
                            <dd><a href="<%=path2 %>">삼양라면</a></dd>
                            <dd><a href="<%=path2 %>">불닭볶음면</a></dd>
                            <dd><a href="<%=path2 %>">짜짜로니</a></dd>
                            <dd><a href="<%=path2 %>">별뽀빠이</a></dd>
                            <dd><a href="<%=path2 %>">삼양유기농우유</a></dd>
                        </dl>
                        <dl class="ft_link item5">
                            <dt>제품</dt>
                            <dd><a href="<%=path2 %>">라면</a></dd>
                            <dd><a href="<%=path2 %>">스낵</a></dd>
                            <dd><a href="<%=path2 %>">유제품</a></dd>
                            <dd><a href="<%=path2 %>">소스/간편식</a></dd>
                            <dd><a href="<%=path2 %>">HMR(냉동)</a></dd>
                        </dl>
                        <dl class="ft_link item6">
                            <dt>고객지원</dt>
                            <dd><a href="<%=path2 %>">고객만족센터</a></dd>
                            <dd><a href="<%=path2 %>">고객문의</a></dd>
                            <dd><a href="<%=path2 %>">FAQ</a></dd>
                        </dl>
                    </nav>
                </div>
            </article>
            <article class="row row3">
                <div class="ft_wrap">
                    <div class="ft_logo left"></div>
                    <address class="copyright right">삼양식품(주) 서울특별시 성북구 오패산로3길 104(하월곡동) Copyright © Samyang Foods Co., Ltd All Rights Reserved.</address>
                </div>
            </article>
         </footer>   
</body>
</html>