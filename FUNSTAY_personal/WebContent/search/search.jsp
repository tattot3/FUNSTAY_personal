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
<link href="../css/search/search.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>
<body>
<!-- header  시작-->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- header  끝-->
<hr>

<div id="content">
<!-- 페이지내용 시작 -->

<div id="sub_DY">
 <div id="search_bar_DY">
 main에서 검색바 떼와서 붙이는 자리
 </div>
 <div id="option_DY">
  <div id="filter_pupular_DY">
   <h3>인기필터</h3>
   <ul id="filter_pupular_list">
    <li>
     <label><input type="checkbox">무료 아침 식사</label>
    </li>
    <li>
     <label><input type="checkbox">수영장</label>
    </li>
    <li>
     <label><input type="checkbox">무료 WiFi</label>
    </li>
    <li>
     <label><input type="checkbox">주차(무료)</label>
    </li>
    <li>
     <label><input type="checkbox">애완동물 동반 가능</label>
    </li>
   
   </ul>
  </div>
  
  
  <div id="hotel_rate_DY">
   <h3>고객 평점</h3>
   <ul id="filter_pupular_list">
    <li>
     <label><input type="checkbox">
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i></label>
    </li>
    <li>
     <label><input type="checkbox">
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i></label>
    </li>
    <li>
     <label><input type="checkbox">
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i>
     <i class="material-icons" style="font-size:18px">&#xe838;</i></label>
    </li>
    <li>
     <label><input type="checkbox">
      <i class="material-icons" style="font-size:18px">&#xe838;</i> 
     <i class="material-icons" style="font-size:18px">&#xe838;</i></label>
    </li>
    <li>
     <label><input type="checkbox">
     <i class="material-icons" style="font-size:18px">&#xe838;</i></label>
    </li>
   
   </ul>
  </div>
  
  
  <div id="cost_DY">
   <h3>1박 요금</h3>
    <ul id="filter_pupular_list">
     <li>₩0 ~ ₩100,000+</li>
     <li>게이지 바 삽입 예정</li>
    </ul>
  </div>
  
  
  
  <div id="facility_DY">
   <h3>시설</h3>
   <ul id="filter_pupular_list">
    <li>
     <label><input type="checkbox">객실 내 욕조</label>
    </li>
    <li>
     <label><input type="checkbox">금연</label>
    </li>
    <li>
     <label><input type="checkbox">무료 WiFi</label>
    </li>
    <li>
     <label><input type="checkbox">무료 아침 식사</label>
    </li>
    <li>
     <label><input type="checkbox">비즈니스 시설</label>
    </li>
    <li>
     <label><input type="checkbox">수영장</label>
    </li>
    <li>
     <label><input type="checkbox">애완동물 동반 가능</label>
    </li>
    <li>
     <label><input type="checkbox">유아용 침대 제공</label>
    </li>
    <li>
     <label><input type="checkbox">주방 사용 가능</label>
    </li>
    <li>
     <label><input type="checkbox">주차 가능</label>
    </li>
    <li>
     <label><input type="checkbox">주차(무료)</label>
    </li>
    <li>
     <label><input type="checkbox">피트니스</label>
    </li>
    <li>
     <label><input type="checkbox">흡연 가능</label>
    </li>
    
    
   
   </ul>
  </div>
  
  
  
  
  
  <div id="disabled_facility_DY">
   <h3>장애인 편의 시설</h3>
   <ul id="filter_pupular_list">
    <li>
     <label><input type="checkbox">객실 내 이용 지원</label>
    </li>
    <li>
     <label><input type="checkbox">롤인 샤워</label>
    </li>
    <li>
     <label><input type="checkbox">욕실 내 이용 지원</label>
    </li>
    <li>
     <label><input type="checkbox">휠체어 지원 객실</label>
    </li>
  </ul>
  </div>
  
  
  
  
 </div>


</div>




<div id="content_DY">
<!-- 여기서부터 페이지 내용을 적어주세요. -->
<p class="letter">검색 목록</p>
 

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">완료된 숙소</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">예정된 숙소</button>
</div>

<div id="London" class="tabcontent">
  <div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Single Room</h3>
        <h6 class="w3-opacity">From $99</h6>
        <p>Single bed</p>
        <p>15m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Double Room</h3>
        <h6 class="w3-opacity">From $149</h6>
        <p>Queen-size bed</p>
        <p>25m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Deluxe Room</h3>
        <h6 class="w3-opacity">From $199</h6>
        <p>King-size bed</p>
        <p>40m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
  </div>
  
  


<div id="Paris" class="tabcontent">
 <div class="w3-row-padding w3-padding-16">
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Single Room</h3>
        <h6 class="w3-opacity">From $99</h6>
        <p>Single bed</p>
        <p>15m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Double Room</h3>
        <h6 class="w3-opacity">From $149</h6>
        <p>Queen-size bed</p>
        <p>25m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
    <div class="w3-third w3-margin-bottom">
      <img src="../images/couch.jpg" alt="Norway" style="width:100%">
      <div class="w3-container w3-white">
        <h3>Deluxe Room</h3>
        <h6 class="w3-opacity">From $199</h6>
        <p>King-size bed</p>
        <p>40m<sup>2</sup></p>
        <p class="w3-large"><i class="fa fa-bath"></i> <i class="fa fa-phone"></i> <i class="fa fa-wifi"></i> <i class="fa fa-tv"></i> <i class="fa fa-glass"></i> <i class="fa fa-cutlery"></i></p>
        <button class="w3-button w3-block w3-black w3-margin-bottom">Choose Room</button>
      </div>
    </div>
  </div>
  

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
     
 



<!-- 페이지내용 끝 -->
</div>
<div class="clear"></div>
<hr>
<!-- footer 시작-->
<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- footer 끝-->
</body>
</html>