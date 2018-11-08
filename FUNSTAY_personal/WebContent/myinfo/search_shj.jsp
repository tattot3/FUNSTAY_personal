<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FunStay</title>
<!-- 페이지 default 링크 시작 -->
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link href="../css/default/login.css" rel="stylesheet">
<link href="../css/default/default.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../css/default/subpage_content.css" rel="stylesheet">
<!-- 페이지 default 링크 끝-->

<!-- 
	.css파일 연결할때 예시 
	<link href="../css/jsp파일이 있는 폴더와 동일한 폴더를 css폴더 안에 만들고 폴더의 이름을 이곳에 써주세요/css파일 이름.css" rel="stylesheet"> 
	[예시] : message폴더에 message_list.jsp파일을 만들었을 경우
		css>message>message_list.css 파일이있어야합니다. 아래는 적용 link코드 입니다.
		<link href="../css/message/message_list.css" rel="stylesheet">	
	** .js파일 적용방법도 동일합니다.
	 	<script src="../js/mypage/message_list.js"></script>
	** 해당 페이지의 연결링크와 스크립트를 head에 넣을때 default링크와 섞이지 않도록 주석으로 구분해서 넣어주세요.
-->
<link href="../css/myinfo/search_center_shj.css" rel="stylesheet">
<link rel="stylesheet" href="styles.css">
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="script.js"></script>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.2/css/all.css' integrity='sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns' crossorigin='anonymous'>
	

</head>
<body>
<!-- header  시작-->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- header  끝-->
<hr>
<!-- 회원 관리 페이지 왼쪽메뉴바 시작 -->
<jsp:include page="../include/subpage.jsp"></jsp:include>
<!-- 회원 관리 페이지 왼쪽메뉴바 끝 -->

<div id="content">
<!-- 페이지내용 시작 -->

<div class="content_top_shj" >

<!-- 변수값 : "부산광역시", "100" -->
<h1 style="float:left;margin:2% 2% 2% 3%;">"부산광역시"검색결과, "100"개의 정보를 찾았습니다.</h1><br>

<!--정렬  -->
<div style="width:8%" id='listmenu_shj'>
<ul style=" width: 114%;" >
   <li class='active has-sub_shj'><a href='#'><span  class='fas'>정렬  &#xf107; &#xf106;</span></a>
      <ul>
         <li class='has-sub_shj'><a href='#'><span  class='fas'>최신순 &#xf107; &#xf106;</span></a>
         </li>
         <li class='has-sub_shj'><a href='#'><span  class='fas'>인기순  &#xf107; &#xf106;</span></a>
         </li>
      </ul>
   </li>
</ul>
</div>
 


</div>
<div class="clear"></div>

<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo1.jpeg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo2.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo3.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>

<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo1.jpeg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo2.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo3.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>

<div class="pageNum_shj">
<a href="#" class="previous round">&#8249;</a>
<b><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
 <a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a></b>
<a href="#" class="next round">&#8250;</a>

</div>
 



<!-- 페이지내용 끝 -->
</div>
</div><!-- 회원 관리 페이지 'subpage' include된 페이지의 div끝 !!지우지마세요!!-->
<div class="clear"></div>
<hr>
<!-- footer 시작-->
<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- footer 끝-->
</body>
</html>