<!-- http://kirinyaga.tistory.com/21 스크롤 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- css -->
<link href = "../css/room_info/room_info.css" rel="stylesheet">
<link href = "../css/login1.css" rel="stylesheet">
<!-- 검색 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Kodchasan" rel="stylesheet">
<!-- 로그인 jquery -->
<script src="../js/login.js"></script>


<!-- date picker api  -->
<link href="../dist/css/datepicker.min.css" rel="stylesheet"type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


<script src="../dist/js/caleander.js"></script>
<script src="../dist/js/datepicker.js"></script>
<script src="../dist/js/datepicker.min.js"></script>
<script src="../dist/js/i18n/datepicker.en.js"></script>
<!-- room_info scroll박스 -->
<script src="../dist/js/scroll.js"></script>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>


<body>
<div class="room_menu">
<h2><a href="#">개요</a><a href="#사진">·사진</a><a href="#내용">·내용</a><a href="#편의시설">·편의시설</a><a href="#후기">·후기 </a><a href="#지역정보">·지역정보 </a></h2>
</div>
<marquee behavior=scroll><b>☆숙소를 소개합니다☆</b></marquee>

<!-- room_border -->
<div id="room_border">

<!-- room_photo.jsp -->
 <jsp:include page="room_photo.jsp"></jsp:include>
 
 <br><br><br><br><br>
 
 
<!-- room_wrapper -->
<div id="room_wrap">
 <div id="room_detail">
 	<div id="room_imfomation">
 	<b><a href="#">숙소세부정보</a><a href="#"> 예약설정</a><a href="#"> 요금</a><a href="#"> 예약가능여부</a></b> 
 	<hr><hr>
 	
 	
 	<a href="#"><img src="../img/메일.jpg" alt="mail" align="right"></a>
 	<a href="#"><img src="../img/smile.png" alt="smile" align="right"></a>
 	
 	
<!-- room_content --> 	
 	<div id="room_content">
 	<a name="내용"><h1>내용</h1></a><br><br>
Cisternino 마을 바리와 브린 디시 (Bari and Brindisi) <br>
근처의 공항에서 가깝게 매혹적인 주변 환경에서 잊을 수없는 휴가를 보내십시오. <br>
트룰로 에데라 (Trullo Edera)는 평화 롭고 평온한 천국을 제공하며<br>
 멋진 경치와 함께 높은 위치에 있습니다. <br>
자연을 좋아한다면 완벽한 장소입니다. <br>
좋은 책을 읽는 올리브 나무 밑에 머무를 수 있습니다.<br>
 작은 시골 길에서 산책을하거나 가장 가까운 해변으로 가실 수 있습니다. <br>
Castellana의 동굴, Alberobello의 동굴, Lecce 및 Martina Franca의 바로크 도시, Egnazia의 발굴,<br>
Fasano의 동물원, Frederick의 성, Grottaglie가있는 Castel del Monte 등 Apulia의 명소를 쉽게 방문 할 수 있습니다.<br>
그 도자기, Taranto, Brindisi 및 Lecce 박물관으로 유명합니다.<br>
가격은 기간에 따라 다르며 포함 된 것으로 간주해야합니다 : 청소, 수건, 시트, 물, 가스, 전기.
<br><br><br><br><br><br><br>
	</div>


<!-- room_facility -->
	<div id="room_facility">
<a name="편의시설"><h1>편의시설</h1></a><br><br>
<jsp:include page="icon.jsp"></jsp:include><br>
표준: 무선 인터넷, 주방, 난방, 옷걸이, 세탁기, 그 외 7개의 편의시설<br>
기타 하이라이트: 건물 내 무료 주차, 실내 벽난로, 어린이용 책과 장난감, 아기 침대, 암막 커튼, 그 외 1개의 편의시설
<br><br><br><br><br>
	</div>


<!-- room_review.jsp -->
<jsp:include page="room_review.jsp"></jsp:include>


<!-- room_area -->
	<div id="room_area">
	<a name="지역정보"><h1>지역정보</h1></a><br><br>
..님의 숙소는 오스투니, Brindisi, 이탈리아에 있습니다.<br>
<img src="../img/map.jpg">
정확한 위치 정보는 예약이 확정된 후 알려드립니다.
	</div>
<br><br><br><br><br>


<!-- room_rule -->
	<div id="room_rule">
	<a name="숙소 이용규칙"><h1>숙소이용규칙</h1></a>
	흡연 금지 <br>
	반려동물 동반 불가 <br>
	파티나 이벤트 금지 <br>
	체크인 가능 시간: 15:00 이후 <br>
	체크아웃: 11:00까지 <br>
	키패드(으)로 셀프 체크인 <br>
	</div>
</div>
 <br><br><br><br><br>
 
 	</div>
 	
 	<!-- room_box.jsp -->
 <jsp:include page="room_box.jsp"></jsp:include>
  </div>
</div>

<!-- top -->
  <div id="top_quick">
   <a href="#">top</a>
  </div>
</div>

</body>
</html>