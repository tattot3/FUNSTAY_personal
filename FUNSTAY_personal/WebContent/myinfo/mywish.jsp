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
<link href="../css/myinfo/mywish_wishlist_shj.css" rel="stylesheet">
<link rel="stylesheet" href="../css/myinfo/styles.css">
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="script.js"></script></head>
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
<!-- 변수값 : 목록 -->
<h1 style="float:left;margin:2% 2% 2% 3%;">목록</h1>
<div id="sect_HJ" style="width: 20%; margin-top: 9%;">
<div style="width: 65%;"  id="listmenu_shj">
<ul style="width: 100%;" >
<!--가상주소로 변환  -->
   <li  class='active has-sub' ><a href='wishlist.jsp'><span>리스트로 돌아가기</span></a>
   </li>
</ul>
</div>
 
<div style="width: 50%;left: 62%;" id="listmenu_shj">
<ul style="" >
	<!-- 변수값:My wish -->
   <li class='active has-sub_shj' id="manlist"><a href='#'><span>My wish</span></a>
      <ul style="width: 130%;">
         <li class='has-sub'><a href='#'><span>Product 1</span></a>       
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>     
         </li>
      </ul>
   </li>
</ul>
</div>
</div>
<!-- <table id="mywish">
<tr><td style="width:30%;"><img src="../img/담양.jpg"></td>
<td><h3>부산 해운대 전망좋고 깔끔한 숙소"WebContent/css/myinfo/mywish_wishlist_shj.css"</h3><br>애완동물 . wifi . 침대..? . </td><td style="width:20%;"> <b>36000</b> <br>/박</td></tr>
<tr><td onclick="location.href="#"></td></tr>
<tr><td></td></tr>
</table> -->
</div>
<div class="content_bottom_shj">
<a href="#">
<div class="mywish_shj">
 <div id="outerbox_shj"> <img src="../img/담양.png"> </div>
 <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox_shj"> <img src="../img/담양.png"> </div>
 <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox_shj"> <img src="../img/담양.png"> </div>
 <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox_shj"> <img src="../img/담양.png"> </div>
 <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
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