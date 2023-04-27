<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>    
<!DOCTYPE html>
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
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="main.css">
    <style>
        /*내부 스타일*/
    </style>
</head>
<body>
   <div class="container">
		<%@ include file="header.jsp" %>
   </div>
        <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <video src="./video/main.mp4" muted autoplay loop></video>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_title" style="visibility: hidden;" >삼양 제품소개</h2>
                <div class="page_wrap">
                    <div class="tit_box">    
                        <h3 class="sub_title">SAMYANG</h3>
                        <h2 class="main_title">PRODUCTS</h2>
                    </div>     
                        <article class="pg1_btn_box">
                            <!-- (input[type=radio][name=pg_ra]#pg1_ra$+label[for=pg1_ra$].item$)*6-->
                            <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                            <label for="pg1_ra1" class="item1">라면</label>
                            <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                            <label for="pg1_ra2" class="item2">불닭볶음면</label>
                            <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                            <label for="pg1_ra3" class="item3">스낵</label>
                            <input type="radio" name="pg_ra" id="pg1_ra4" class="pg1_ra">
                            <label for="pg1_ra4" class="item4">유제품</label>
                            <input type="radio" name="pg_ra" id="pg1_ra5" class="pg1_ra">
                            <label for="pg1_ra5" class="item5">소스,간편식</label>
                            <input type="radio" name="pg_ra" id="pg1_ra6" class="pg1_ra">
                            <label for="pg1_ra6" class="item5">냉동</label>
                            <!-- div.ban_fr>ul.ban_box>li.item$>img.pic+(div.ban_tit_box>h2.ban_tit1+h2.ban_tit2+p.ban_com)-->
                            <div class="ban_fr">
                                <ul class="ban_box">
                                    <li class="item1">
                                        <img src="./images/c1.png" alt="라면" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">01</h2>
                                            <h2 class="ban_tit2">삼양라면</h2>
                                            <p class="ban_com">라면의 원조, 기본에 충실한 삼양의
                                              		대표 브랜드</p>
                                        </div>
                                    </li>
                                    <li class="item2">
                                        <img src="./images/c2.png" alt="불닭볶음면" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">02</h2>
                                            <h2 class="ban_tit2">불닭볶음면</h2>
                                            <p class="ban_com">먹을수록 중독되는 매운맛! <br>
							                                                국내외에서 큰 사랑을 받고 있는 <br>
							                                                삼양식품의 대표 브랜드</p>
                                        </div>
                                    </li>
                                    <li class="item3">
                                        <img src="./images/c3.jpg" alt="스낵" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">03</h2>
                                            <h2 class="ban_tit2">별뽀바이</h2>
                                            <p class="ban_com">최초의 라면과자! <br>
							                                                흉내낼 수 없는 맛~ 모방할 수 없는 맛~ <br>라면과자의 원조!
							                                                삼양 별뽀빠이</p>
                                        </div>
                                    </li>
                                    <li class="item4">
                                        <img src="./images/c4.jpg" alt="유제품" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">04</h2>
                                            <h2 class="ban_tit2">삼양목장</h2>
                                            <p class="ban_com">유기농우유</p>
                                        </div>
                                    </li>
                                    <li class="item5">
                                        <img src="./images/c5.jpg" alt="소스,간편식" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">05</h2>
                                            <h2 class="ban_tit2">불닭소스</h2>
                                            <p class="ban_com">불닭볶음면 매니아라면 누구나 꿈꾸던 <br> '불닭소스'가 출시되었습니다. <br>
                                               		 불닭소스를 활용해 나만의 레시피를 즐겨보세요.</p>
                                        </div>
                                    </li>
                                    <li class="item6">
                                        <img src="./images/loading.png" alt="냉동" class="pic">
                                        <div class="ban_tit_box">
                                            <h2 class="ban_tit1">06</h2>
                                            <h2 class="ban_tit2">냉동식품</h2>
                                            <p class="ban_com">준비중입니다!</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </article>                       
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_title" style="visibility: hidden;">지속가능경영</h2>
                <div class="page_wrap">
                    <div class="tit_box">    
                        <h3 class="sub_title">ESG</h3>
                        <h2 class="main_title">SUSTAINABILITY</h2>
                    </div>  
                    <article class="grid_fr">
                        <ul class="grid_box">
                            <li>
                                <a href="<%=path %>" class="item1">
                                    <h3 class="grid_tit">안전보건환경</h3>
                                    <br>
                                    <p class="grid_com">전 임직원은 SHE(안전·보건·환경)를 최우선</p>
                                </a>
                                <a href="<%=path %>" class="item2">
                                    <h3 class="grid_tit">윤리,인권경영</h3>
                                    <br>
                                    <p class="grid_com">정직과 신용이란 경영이념 아래, 투명하고 윤리적인 경영문화를 정착하고자 윤리행동 원칙 준수</p>
                                </a>
                            </li>
                            <li>
                                <a href="<%=path %>" class="item3">
                                    <h3 class="grid_tit">소비자중심경영</h3>
                                    <br>
                                    <p class="grid_com">소비자중심경영 실천을 통한 고객신뢰 강화</p>
                                </a>
                            </li>
                            <li>
                                <a href="<%=path %>" class="item4">
                                    <h3 class="grid_tit">사회공헌</h3>
                                    <br>
                                    <p class="grid_com">삼양식품과 함께 꿈꾸는 더 나은 미래</p>
                                </a>
                                <a href="<%=path %>" class="item5">
                                    <h3 class="grid_tit">지배구조</h3>
                                    <br>
                                    <p class="grid_com">기업지배구조,이사회,이사회 내 위원회,주주총회</p>
                                </a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_title" style="visibility: hidden;">호치와친구들</h2>
                <div class="page_wrap">
                    <div class="tit_box">    
                        <h3 class="sub_title">CHARACTER</h3>
                        <h2 class="main_title">HOCHI&FRIEND</h2>
                    </div> 
                    <article class="col_fr">
                        <ul class="col_box">
                            <li class="left">
                                <p class="one_line"><span class="dot">호치와친구들</span></p>
                                <img src="./images/hochi01.png" alt="호치와친구들" width="750px" height="320px"> 
                            </li>
                            <li class="right">
                                <a href="<%=path %>" class="item1"><img src="./images/hochi1.png" alt="호치" width="40px" height="60px"> <span>호치 HOCHI</span></a>
                                <a href="<%=path %>" class="item2"><img src="./images/neng1.png" alt="넹" width="40px" height="60px"><span>넹 NENG</span></a>
                                <a href="<%=path %>" class="item3"><img src="./images/mozzi1.png" alt="묘찌" width="40px" height="60px"><span>묘찌 MOZZI</span></a>
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_title" style="display: none;">삼양소식</h2>
                <div class="page_wrap">
                    <div class="tit_box">    
                        <h3 class="sub_title">PRESS</h3>
                        <h2 class="main_title">NOW IS</h2>
                    </div> 
                    <a href="<%=path %>" class="more">+</a>
                    <article class="board_fr">
                        <table class="tbl">
                            <today>
                                <tr>
                                    <td class="td1">5</td>
                                    <td class="td2">
                                        <a href="<%=path %>">
                                            <h3 class="td_tit">삼양식품, 강릉 산불 피해 지역에 라면 긴급 지원</h3>
                                            <p class="td_com">삼양식품은 산불로 큰 피해를 입은 강릉 지역 이재민들에게 라면과 스낵 1만여개를 긴급 지원했다고 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">4</td>
                                    <td class="td2">
                                        <a href="<%=path %>">
                                            <h3 class="td_tit">삼양식품, 비빔면 신제품 ‘4과비빔면’ 출시</h3>
                                            <p class="td_com">삼양식품이 비빔면 신제품 ‘4과비빔면’을 출시했다고 4일 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="<%=path %>">
                                            <h3 class="td_tit">삼양식품, 식물성 단백질 음료 ‘프로틴드롭’ 출시</h3>
                                            <p class="td_com">삼양식품은 식물성 건강 브랜드 ‘잭앤펄스(Jack & Pulse)’를 론칭하고, 첫번째 제품으로 식물성 단백질 음료 ‘프로틴드롭(ProteinDrop)’을 출시한다고 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">2</td>
                                    <td class="td2">
                                        <a href="<%=path %>">
                                            <h3 class="td_tit">글로벌 시장 등에 업은 삼양식품, 외형·내실 다 잡았다</h3>
                                            <p class="td_com">불닭으로 세계인의 입맛을 사로잡은 삼양식품이 지난해 해외사업부문의 폭발적인 성장으로 외형과 내실을 모두 챙겼다.</p>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="td1">1</td>
                                    <td class="td2">
                                        <a href="<%=path %>">
                                            <h3 class="td_tit">삼양식품, 한-인도수교 50주년 맞아 주인도 대한민국 대사관 행사에 불닭볶음면 등 제품 500박스 협찬</h3>
                                            <p class="td_com">삼양식품은 한국과 인도의 수교 50주년을 기념해 주인도 대한민국 대사관 행사 협찬을 통해 불닭볶음면 등 제품 500박스(14,800개) 현지 기부를 진행하고 있다고 밝혔다.</p>
                                        </a>
                                    </td>
                                </tr>
                            </today>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_title" style="display: none;">고객지원</h2>
                <div class="page_wrap">
                    <div class="tit_box">    
                        <h3 class="sub_title">CS CENTER</h3>
                        <h2 class="main_title">고객센터</h2>
                    </div> 
                    <article class="colm_fr">
                        <h3 class="lst_tit">상담센터</h3>
                        <ul class="lst1">
                            <li class="item1">                          
                                <h3 class="item_tit">고객만족센터</h3>
                                <a href="<%=path %>" class="item_more">상담하기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">고객문의</h3>
                                <a href="<%=path %>" class="item_more">문의하기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">FAQ</h3>
                                <a href="<%=path %>" class="item_more">보러가기</a>
                            </li>
                        </ul>
                        <h3 class="lst_tit">홍보관</h3>
                        <ul class="lst2">
                            <li class="item1">
                                <h3 class="item_tit">음원/영상</h3>
                                <a href="<%=path %>" class="item_more">보러가기</a>
                            </li>
                            <li class="item2">
                                <h3 class="item_tit">삼양역사관</h3>
                                <a href="<%=path %>" class="item_more">보러가기</a>
                            </li>
                            <li class="item3">
                                <h3 class="item_tit">레시피</h3>
                                <a href="<%=path %>" class="item_more">보러가기</a>
                            </li>
                        </ul>
                    </article>

                </div>
            </section>
        </div>
		<%@ include file = "footer.jsp" %> 
   	<div class="fix_area">
        <a href="#page5" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box totop">↑<br>TOP</a>
   	</div>
</body>
</html>