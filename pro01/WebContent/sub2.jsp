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
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/sub_common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    
    <style>
        /* 내부 스타일 */
        .content {background-image: url("./images/title1.jpg");}
        .left_tnb li:last-child::before { content:""; }
        #page1 { background-color: #fff; color:#333;}
        #page1 .tit_box {clear: both; padding-top: 80px; width: 1280px; margin: 0 auto;}
        .more{display: block; position: absolute; top: 60px; right: 200px; font-size: 68px; font-weight: bolder;
        width: 80px; height: 80px; border: 1px solid #ccc; text-align: center; color: #999;}
        .board_fr { clear: both; width: 1280px; margin: 0px auto; padding-top: 40px;}
        .tb1 { clear: both; display: table; border-collapse: collapse;}
        .tbl tr { display: table-row; width: 1280px;}
        .tbl td {display: table-cell; min-height: 50px; padding-top: 20px; padding-bottom: 20px;
        border-top: 1px solid #ccc;}
        .tbl tr:last-child td { border-bottom:1px solid #ccc;}
        .tbl td.td1 { vertical-align: top; width: 100px; text-align:  left; font-size: 32px;
        color: #ff9900; font-weight: 100;}
        .tbl td a { display: block; color: #333; transition-duration: 0.4s;}
        .tbl td a .td_tit { width: 1100px; font-size: 28px; line-height: 1.4; font-weight: 200; padding-right: 20;
        white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
        .tbl td a .td_com { width: 1100px; font-size: 18px; line-height: 2.2; font-weight: 100;
        color: #999; padding-right: 36px;
        white-space: nowrap; overflow: hidden; text-overflow: ellipsis;}
        .tbl td a:hover { color:#ff9900;}
        .tbl td a:hover .td_com { color:#ff9900;}

        #page2 {background-color: rgb(255, 218, 164);}
        #page2 .vs .img_box {display: block; clear: both; width: 1280px;}
        #page2 .vs video {clear: both; display: block; width: 750px; 
        margin: 0; padding: 0; background-repeat: no-repeat; margin: 0 auto;}

        #page3 .grid3 li {text-align: center; box-sizing: border-box; border: 1px solid #eee; height: 500px;}
        #page3 .grid3 .grid_tit {font-size: 28px; font-weight: 200; color: #ff7300; padding-top: 50px;}
        #page3 .grid3 .grid_tit:after {content: "";  display: block; clear: both; width: 80px;
        height: 5px; background-color: #ff9900; margin: 30px auto;}
        #page3 .grid3 .grid_com {padding-top: 14px;}
        #page3 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}

        #page4 {background-color: rgb(255, 218, 164);}
        #page4 .vs .img_box {display: block; clear: both; width: 1280px; margin: 0 auto;}
        #page4 .vs video {clear: both; display: block; width: 750px; 
        margin: 0; padding: 0; background-repeat: no-repeat; margin: 0 auto;}

        #page5 .page_wrap {text-align:center; padding-top: 30px; line-height: 30px;}

        #page6  .page_wrap { width:1280px; height: 400px; padding-top: 5px; }
        .sub_title { font-size: 28px; color:orange; font-weight: 100; letter-spacing: 2px;}
        .main_title { font-size: 72px; color: #000; font-weight: 700; float: left; }
        #page6  .pg1_btn_box { clear:both; }
        #page6  .pg1_btn_box    label{ display: block; padding: 0.8em; float: left;
        border: 1px solid #e1e1e1; border-radius: 36px; margin: 0.5em; color: #999;
        cursor:pointer;}
        #page6  .pg1_btn_box    label:hover { color: #fff; background-color: rgba(255, 166, 0, 0.538);}
        .pg1_ra {display: none;}
        #page6  .pg1_ra:checked + label { color:#fff; background-color: rgba(255, 166, 0, 0.815);}
        .ban_fr { clear: both; width: 1280px; height: 550px; padding-top: 3px;
        overflow: hidden;}
        .ban_fr .ban_box {width: 600%; height: 550px; transition-duration: 0.6s;}
        .ban_fr .ban_box li { width: 1280px; float: left; height: 550px;}
        .ban_fr .ban_box li .pic{display: block; width: 840px; height: 550px; float: left;
        border-radius: 40px;}
        .ban_fr .ban_box li .ban_tit_box {float: right; width: 400px; height: 550px;
        position:relative ;
        background-color: #f1f1f1; border-radius: 40px;}
        .ban_fr .ban_box li .ban_tit_box .ban_tit1 {font-size: 64px; line-height: 3; color: rgba(255, 166, 0, 0.815);
        margin-left: 50px;}
        .ban_fr .ban_box li .ban_tit_box .ban_tit2 {position: absolute; left: 50px; bottom: 120px;
        font-size: 36px; line-height: 2; color: rgba(255, 166, 0, 0.815);}
        .ban_fr .ban_box li .ban_tit_box .ban_com{position: absolute; bottom: 50px;
        left: 50px; font-size: 16px; color: #666; }
        #pg1_ra1:checked ~ .ban_fr  .ban_box { margin-left: 0;}
        #pg1_ra2:checked ~ .ban_fr  .ban_box { margin-left: -1280px;}
        #pg1_ra3:checked ~ .ban_fr  .ban_box { margin-left: -2560px;}
        #pg1_ra4:checked ~ .ban_fr  .ban_box { margin-left: -3840px;}
        #pg1_ra5:checked ~ .ban_fr  .ban_box { margin-left: -5120px;}
    
    </style>
</head>
<body>
   <div class="container">
		<%@ include file="header.jsp" %>
   </div>
           <div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">홍보관</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">삼양소식</h2>
                <div class="page_wrap">
                    <a href="" class="more">+</a>
                    <article class="board_fr">
                        <table class="tbl">
                            <today>
                                <tr>
                                    <td class="td1">3</td>
                                    <td class="td2">
                                        <a href="">
                                            <h3 class="td_tit">삼양식품, 식물성 단백질 음료 ‘프로틴드롭’ 출시</h3>
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
                            </today>
                        </table>
                    </article>
                </div>
            </section>
            <section class="page" id="page2">
                <h2 class="page_tit">홍보영상</h2><br><br>
                <div class="page_wrap">
                            <figure class="vs">
                                <div class="img_box">
                                    <video src="<%=path %>/video/sam.mp4" muted autoplay loop></video>
                                </div>
                            </figure>   
                </div>
            </section>
            <section class="page" id="page3">
                <h2 class="page_tit">호치와 친구들</h2>
                <div class="page_wrap">
                    <article class="grid3">
                        <ul class="grid_box">
                            <li>
                                <div>
                                    <h3 class="grid_tit">호치</h3>
                                    <p class="grid_com"> <img src="./images/hochi1.png" width="100px" height="200px"><br><br>
                                        #푸드스타일리스트 #패션테러리스트 <br>
                                        #엉매닭 #불닭 5개 흡입 
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">넹</h3>
                                    <p class="grid_com"><img src="./images/neng1.png" width="100px" height="200px"><br><br>
                                        #순둥이 #요리매니아 <br>
                                        #우유드링킹(King)
                                    </p>
                                </div>                           
                            </li>
                            <li>
                                <div>
                                    <h3 class="grid_tit">묘찌</h3>
                                    <p class="grid_com"> <img src="./images/mozzi1.png" width="100px" height="200px"><br><br>
                                        #엉뚱묘찌 #관심주세요 <br>
                                        #외로워도슬퍼도 #꼬불파마
                                    </p>
                                </div>                           
                            </li>
                        </ul>
                    </article>
                </div>
            </section>
            <section class="page" id="page4">
                <h2 class="page_tit">음원/영상</h2><br><br><br>
                <figure class="vs">
                    <div class="img_box">
                        <video src="<%=path %>/video/sam.mp4" muted autoplay loop></video>
                    </div>
                </figure>  
            </section>
            <section class="page" id="page5">
                <h2 class="page_tit">삼양역사관</h2>
                <div class="page_wrap">
                    <a href=""><img src="./images/intro_02.png" width="600px" ></a>
                        <p class="page_comment">1961년 창업한 삼양식품은 '정직과 신용'의 창업정신으로 한국 식품산업의 새로운 영역을 개척하며 성장해왔습니다.<br>
                        식품으로 인간 백세시대를 열겠다는 故전중윤 선대회장의 뜻을 이어받아 1960년대 식량난 극복과 1970년대 식생활 개선에 앞장섰으며, 
                        <br>현재는 한국의 맛과 문화를 담은 제품으로 한국 식품의 우수성을 전 세계에 알리며 글로벌 종합식품기업으로 도약하고 있습니다. <br>
                        삼양식품은 안전하고 건강한 먹거리를 만드는 정직한 기업, 사회로부터 신회받는 기업이 되기 위해 최선의 노력을 다하겠습니다.</p>
                </div>
            </section>
            <section class="page" id="page6">
                <h2 class="page_tit">레시피</h2>
                <div class="page_wrap">
                    <article class="pg1_btn_box">
                        <input type="radio" name="pg_ra" id="pg1_ra1" class="pg1_ra" checked>
                        <label for="pg1_ra1" class="item1">레시피1</label>
                        <input type="radio" name="pg_ra" id="pg1_ra2" class="pg1_ra">
                        <label for="pg1_ra2" class="item2">레시피2</label>
                        <input type="radio" name="pg_ra" id="pg1_ra3" class="pg1_ra">
                        <label for="pg1_ra3" class="item3">레시피3</label>
                        <input type="radio" name="pg_ra" id="pg1_ra4" class="pg1_ra">
                        <label for="pg1_ra4" class="item4">레시피4</label>
                        <input type="radio" name="pg_ra" id="pg1_ra5" class="pg1_ra">
                        <label for="pg1_ra5" class="item5">레시피5</label>
                        <div class="ban_fr">
                            <ul class="ban_box">
                                <li class="item1">
                                    <img src="./images/recipe1.jpg" alt="라면" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">01</h2>
                                        <h2 class="ban_tit2">불닭소스레시피</h2>
                                        <p class="ban_com">든든한 한끼 Time!</p>
                                    </div>
                                </li>
                                <li class="item2">
                                    <img src="./images/recipe2.jpg" alt="불닭볶음면" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">02</h2>
                                        <h2 class="ban_tit2">불닭소스레시피</h2>
                                        <p class="ban_com">든든한 한끼 Time!</p>
                                    </div>
                                </li>
                                <li class="item3">
                                    <img src="./images/recipe3.jpg" alt="스낵" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">03</h2>
                                        <h2 class="ban_tit2">불닭소스레시피</h2>
                                        <p class="ban_com">든든한 한끼 Time!</p>
                                    </div>
                                </li>
                                <li class="item4">
                                    <img src="./images/recipe4.jpg" alt="유제품" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">04</h2>
                                        <h2 class="ban_tit2">불닭소스레시피</h2>
                                        <p class="ban_com">맛있는 간식 Time!</p>
                                    </div>
                                </li>
                                <li class="item5">
                                    <img src="./images/recipe5.jpg" alt="소스,간편식" class="pic">
                                    <div class="ban_tit_box">
                                        <h2 class="ban_tit1">05</h2>
                                        <h2 class="ban_tit2">불닭소스레시피</h2>
                                        <p class="ban_com">맛있는 간식 Time!</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </article>  
                </div>
        </div>
<%@ include file = "footer.jsp" %> 
   	<div class="fix_area">
        <a href="#page5" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box totop">↑<br>TOP</a>
   	</div>
</body>
</html>