<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%> 
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>회사소개</title>

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
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    
    <style>
            /* 내부 스타일 */
        .content {background-image: url("./images/title1.jpg");}
        .left_tnb li:last-child::before { content:""; }
        #page1 .grid4 li {text-align: center; box-sizing: border-box; border: 1px solid #eee; height: 300px;}
        #page1 .grid4 .grid_tit {font-size: 28px; font-weight: 200; color: #ff7300; padding-top: 50px;}
        #page1 .grid4 .grid_tit:after {content: "";  display: block; clear: both; width: 80px;
        height: 5px; background-color: #ff9900; margin: 30px auto;}
        #page1 .grid4 .grid_com {padding-top: 14px;}
        #page1 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}

        #page2 {background-image: url("./images/intro_02.png"); background-position: center center;
        background-size: 100% auto; background-attachment: fixed; }
        #page2 .page_comment {text-shadow: 1px 1px 3px #333; color: #fff; line-height: 30px; width: 1300px; text-align: center;}
        #page2 .page_comment_1 {text-shadow: 1px 1px 3px #ff7300; color: #fff; font-size: 25px; width: 1300px;  text-align: center;}

        #page3 .grid4 li {text-align: center; box-sizing: border-box; border: 1px solid #eee; height: 300px;}
        #page3 .grid4 .grid_tit {font-size: 28px; font-weight: 200; color: #ff7300; padding-top: 50px;}
        #page3 .grid4 .grid_tit:after {content: "";  display: block; clear: both; width: 80px;
        height: 5px; background-color: #ff9900; margin: 30px auto;}
        #page3 .grid4 .grid_com {padding-top: 14px;}
        #page3 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}

        #page4 .page_wrap a { clear:both;}

        #page5 .grid3 li {text-align: center; box-sizing: border-box; border: 1px solid #eee; height: 300px;}
        #page5 .grid3 .grid_tit {font-size: 28px; font-weight: 200; color: #ff7300; padding-top: 50px;}
        #page5 .grid3 .grid_tit:after {content: "";  display: block; clear: both; width: 80px;
        height: 5px; background-color: #ff9900; margin: 30px auto;}
        #page5 .grid3 .grid_com {padding-top: 14px;}
        #page5 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}
    </style>
</head>
<body>
   <div class="container">
		<%@ include file="header.jsp" %>
   </div>
           <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">브랜드</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">삼양식품</h2>
                <div class="page_wrap">
                    <p class="page_comment">1961년 창업한 삼양식품은 '정직과 신용'의 창업정신으로 한국 식품산업의 새로운 영역을 개척하며 성장해왔습니다.<br>
                    식품으로 인간 백세시대를 열겠다는 故전중윤 선대회장의 뜻을 이어받아 1960년대 식량난 극복과 1970년대 식생활 개선에 앞장섰으며, 
                    <br>현재는 한국의 맛과 문화를 담은 제품으로 한국 식품의 우수성을 전 세계에 알리며 글로벌 종합식품기업으로 도약하고 있습니다. <br>
                    삼양식품은 안전하고 건강한 먹거리를 만드는 정직한 기업, 사회로부터 신회받는 기업이 되기 위해 최선의 노력을 다하겠습니다.</p>
                    <article class="grid4">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">슬로건</h3>
                                    <p class="grid_com">delicious together<br>
                                        고객에 대한 감사와 사랑</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">비전</h3>
                                    <p class="grid_com">Excellence in Taste<br>
                                    최고의 맛/멋있는 기업</p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">미션</h3>
                                    <p class="grid_com">Re-Creation<br>
                                    신사업/제품개발의 창의성</p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">가치체계</h3>
                                    <p class="grid_com">Honesty & Integrity<br>
                                    정직과 신용</p>
                                </div>                           
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">사업영역</h2>
                <div class="page_wrap">
                        <p class="page_comment_1">1963년 9월, 국내 최초의 라면 ‘삼양라면’을 생산하다<img src="./images/intro_01.png" width="200px"><br><br><br></p> 
                        <p class="page_comment"> 
                        유일한 주식이었던 쌀과 잡곡, 그것마저도 부족하여 허리띠를 졸라매야 했던 1960년대. <br>
                        故전중윤 선대회장은 먹을 것이 없어 미군이 버린 음식을 끓여 만든 ‘꿀꿀이죽’으로
                        한끼를 때우는 사람들의 모습을 보고, 식량난 해결 방안을 모색했습니다.<br><br>

                        그 묘안으로 ‘라면’을 떠올린 전 선대회장은 직접 일본의 묘조식품을 찾아가 기계와 기술을
                        도입했고, <br>마침내 1963년 9월 15일 국내 최초의 라면 ‘삼양라면’이 탄생했습니다.<br><br>

                        이후 라면은 제2의 주식으로 자리매김하며 새로운 식문화를 정착시켰고,<br>
                        삼양식품은 소비자들의 다양한 니즈를 만족시키는 새로운 맛의 라면으로 시장을 개척하며
                        트렌드를 선도하고 있습니다.<br>
                       </p>  
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">계열사</h2>
                <div class="page_wrap">
                    <article class="grid4">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">삼양애니</h3>
                                    <p class="grid_com">콘텐츠 커머스 기업<br>
                                        글로벌 컨텐츠 커머스 사업과 <br>IT사업을 진행하고 있습니다.</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">삼양냉동</h3>
                                    <p class="grid_com">냉동식품 제조전문기업<br>
                                   우수한 인프라와 효율적인 생산라인 관리를 <br>통해 최고의 솔루션 제공</p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">삼양프루웰</h3>
                                    <p class="grid_com">포장용 골판지 상자를 생산<br>
                                    첨단 생산설비 및 통합생산관리시스템을 통해 <br>고품질의 박스를 생산하고 있습니다</p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">삼양제분</h3>
                                    <p class="grid_com">1등급 밀가루 생산<br>
                                    식품 산업의 기초 소재인 <br>밀가루를 생산하는 산업</p>
                                </div>                           
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">해외법인</h2><br><br><br>
                <div class="page_wrap">
                    <a href=""><img src="./images/china.jpg" alt="중국" width="400px" height="300px"></a> &nbsp;&nbsp;
                    <a href=""><img src="./images/america.jpg" alt="아메리카" width="400px" height="300px"></a> &nbsp;&nbsp;
                    <a href=""><img src="./images/japan.png" alt="일본" width="400px" height="300px"></a>
                </div>
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">공장</h2>
                <div class="page_wrap">
                    <article class="grid3">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">원주공장</h3>
                                    <p class="grid_com">강원도 원주시 우산로 177(우산동)</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">익산공장</h3>
                                    <p class="grid_com">전라북도 익산시 익산대로 21길 1-12(모현동)</p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">밀양공장</h3>
                                    <p class="grid_com">경남 밀양시 부북면 감천리 534-2</p>
                                </div>                           
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page6">
                <h2 class="page_tit">오시는길</h2>
                <div class="page_wrap">

                    <div id="map" style="width:100%;height:350px;"></div>

                    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=09367983021caebe60f252a9dd2c5e16"></script>
                    <script>
                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                        mapOption = { 
                            center: new kakao.maps.LatLng(37.60979855030343, 127.03411260573779), // 지도의 중심좌표
                            level: 3 // 지도의 확대 레벨
                        };
                    
                    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                    var map = new kakao.maps.Map(mapContainer, mapOption); 
                    </script>
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