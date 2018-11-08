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
<link href="../css/default/subpage.css" rel="stylesheet">
<script src="../js/default/jquery-3.3.1.js"></script>
<!-- 페이지 default 링크 끝-->

<!-- mileage페이지의 링크 시작 -->
<link href="../css/mypage/mileage.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" 
integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">

<!--  mileage페이지의 링크 끝 -->

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

<h1>나의 마일리지 확인</h1>
<!-- 보유마일리지  한눈에 보기 -->
<div id="mileagepreview_sg">
	<div class="showsnakicon_sg">
		<i class="fas fa-piggy-bank"></i>
	</div>
	<div class="previewmileage_sg">
		총 누적 마일리지 : 50,000\<br>
		사용된 마일리지 : 30,000\<br>
		사용가능 마일리지 : 20,000\
	</div>
</div>
 
<!-- 마일리지 내역 확인하기 -->
<div id="mileageuselist_sg">
<form action="#" method="post">
<input type="date">
<input type="date">
<input type="submit" value="조회하기">
</form>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'total')" id="defaultOpen">전체 내역</button>
  <button class="tablinks" onclick="openCity(event, 'used')">사용 내역</button>
  <button class="tablinks" onclick="openCity(event, 'save')">적립 내역</button>
</div>

<div id="total" class="tabcontent">
  <table border="1">
  	<tr>
  		<th>일자</th>
  		<th>분류</th>
  		<th>내용</th>
  		<th>사용</th>
  		<th>적립</th>
  		<th>잔여 마일리지</th>
  	</tr>
  	<tr>
  		<td>2018.04.12</td>
  		<td>사용</td>
  		<td>주문번호 : 00002328</td>
  		<td>3,000</td>
  		<td>0</td>
  		<td>20,000</td>
  	</tr>
  	<tr>
  		<td>2018.04.12</td>
  		<td>사용</td>
  		<td>주문번호 : 000023350</td>
  		<td>17,000</td>
  		<td>0</td>
  		<td>23,000</td>
  	</tr>
  	<tr>
  		<td>2018.04.12</td>
  		<td>적립</td>
  		<td>주문번호 : 000023344</td>
  		<td>0</td>
  		<td>10,000</td>
  		<td>40,000</td>
  	</tr>
  	<tr>
  		<td>2018.04.12</td>
  		<td>사용</td>
  		<td>주문번호 : 000023350</td>
  		<td>10,000</td>
  		<td>0</td>
  		<td>30,000</td>
  	</tr>
  	<tr>
  		<td>2018.04.12</td>
  		<td>적립</td>
  		<td>주문번호 : 0000233342</td>
  		<td>0</td>
  		<td>40,000</td>
  		<td>40,000</td>
  	</tr>
  </table>
</div>

<div id="used" class="tabcontent">
  <table border="1">
  	<tr>
  		<th>일자</th>
  		<th>분류</th>
  		<th>내용</th>
  		<th>사용 마일리지</th>
  		<th>잔여 마일리지</th>
  	</tr>
  </table>
</div>

<div id="save" class="tabcontent">
  <table border="1">
  	<tr>
  		<th>일자</th>
  		<th>분류</th>
  		<th>내용</th>
  		<th>적립 마일리지</th>
  		<th>잔여 마일리지</th>
  	</tr>
  </table>
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

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
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