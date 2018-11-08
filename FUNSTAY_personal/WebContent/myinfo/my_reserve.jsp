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
<!-- 페이지 default 링크 끝--
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="../css/myinfo/my_reserve.css" rel="stylesheet">
<link href="../css/myinfo/mywish_wishlist_shj.css" rel="stylesheet"> 

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

<p class="letter">내 예약정보</p>
 
<div class="w3-bar w3-black">
  <button class="w3-bar-item w3-button" onclick="openCity('London')">완료된 숙소</button>
  <button class="w3-bar-item w3-button" onclick="openCity('Paris')">예정된 숙소</button>
</div>

<div id="London" class="w3-container city">
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/담양1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 해운대</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
</div>

<div id="Paris" class="w3-container city" style="display:none">
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
  <a href="#">
  <div class="mywish_shj">
  <div id="outerbox_shj"> <img src="../img/부산1.png"> </div>
  <div id="imginfo_shj">
  <div id="imgname_shj">부산광역시 광안리</div>
  <div>35,000 / 박</div>
  <div>3.5 ㅇㅇㅇㅇㅇ25</div>
  </div>
  </div>
  </a>
</div>



<script>
function openCity(cityName) {
    var i;
    var x = document.getElementsByClassName("city");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    document.getElementById(cityName).style.display = "block";  
}
</script>



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