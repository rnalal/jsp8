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
    <title>회원가입페이지</title>

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
     <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/sublayout.css">
    <style>
        /*내부 스타일*/
  	   .vs { height:40vh; }
     .content {background-image: url("../images/title1.jpg");}

    #page1 .page_tit { padding-top: 60px; }
    .table { width:900px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
    th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
    td { padding-top:10px; padding-bottom: 10px; }
    th:after {  content: "";  display: inline-block;  width: 100%; }
    th:before {  content: "";  display: inline-block;  width: 100%; }
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
    .page_tit { text-align:center; font-size:32px; }
    .page_wrap {padding-top:30px;}
    </style>
</head>
<body>
   <div class="container">
		<%@ include file="../header.jsp" %>
		<div class="content">
            <figure class="vs">
                <div class="img_box">
                    <h1 class="tit">JOIN</h1>
                </div>
            </figure>
            <section class="page" id="page1">
                <h2 class="page_tit">회원가입</h2>
                <div class="page_wrap">
					<form name="join_form" action="joinpro.jsp" method="post">
						<table class="table" id="tb1">
							<tbody>
								<tr>
									<th><label for="id">아이디</label></th>
									<td>
										<input type="text" name="id" id="id" class="indata" pattern="^[a-z0-9]{3,18}$" required autofocus>
										<input type="hidden" name="id_ck" id="id_ck" value="no"> 
										<input type="button" value="아이디 중복 확인" onclick="idCheck()" class="btn btn-primary">
										<div id="msg"></div>
									</td>
								</tr>
								<tr>
									<th><label for="pw">비밀번호</label></th>
									<td><input type="password" name="pw" id="pw" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,10}$" required></td>
								</tr>
								<tr>
									<th><label for="pw2">비밀번호 확인</label></th>
									<td><input type="password" name="pw2" id="pw2" class="indata" pattern="^[A-Za-z\d$!%*#?&]{4,10}$" required></td>
								</tr>
								<tr>
									<th><label for="name">이름</label></th>
									<td><input type="text" name="name" id="name" class="indata" pattern="^[가-힣A-Za-z]{2,12}$" required></td>
								</tr>
								<tr>
									<th><label for="age">나이</label></th>
									<td><input type="text" name="age" id="age" class="indata" pattern="^[0-9]{1,2}$" required></td>
								</tr>
								<tr>
									<th><label for="email">이메일</label></th>
									<td><input type="email" name="email" id="email" class="indata"></td>
								</tr>
								<tr>
									<th><label for="tel">전화번호</label></th>
									<td><input type="tel" name="tel" id="tel" maxlength="13" class="indata"></td>
								</tr>
								<tr>
									<th><label for="addr">주소</label></th>
									<td><input type="text" name="addr" id="addr" class="indata"></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="회원가입" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
										<input type="reset" value="취소" class="btn btn-cancel">
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					<script>
						function idCheck(){
							var id = document.getElementById("id");
							if(id.value!=""){
								window.open("idCheck.jsp?id="+id.value, "아이디 중복 검사", "width=400, height=200");
							} else {
								alert("아이디를 입력해주세요");
								id.focus();
								return;
							}							
						}
						function form_check(f){
							if(f.pw.value!=f.pw2.value){
								alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
								return false;
							}
							if(f.id_ck.value!="yes"){
								alert("아이디 중복체크를 완료하지  못했습니다.");
								return false;
							}
						}	
						function init(){	//전체 폼 초기화
							var form = document.getElementById("join_form");
							var id = document.getElementById("id");
							id.removeAttribute("readonly");
							form.reset();
						}
					</script>
                </div>
            </section>
        </div>
	</div>

		<%@ include file = "../footer.jsp" %> 
   	<div class="fix_area">
        <a href="#page5" class="cir_box counsel">고객<br>상담센터</a>
        <a href="#" class="cir_box totop">↑<br>TOP</a>
   	</div>
</body>
</html>