<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="net.booking.db.PaymentBean"%>
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
<link href="./css/default/login.css" rel="stylesheet">
<link href="./css/default/default.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="./css/default/subpage_content.css" rel="stylesheet">
<link href="./css/default/subpage.css" rel="stylesheet">
<script src="./js/default/jquery-3.3.1.js"></script>
<!-- 페이지 default 링크 끝-->

<!-- mileage페이지의 링크 시작 -->
<link href="./css/mypage/mileage.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" 
integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
<!-- ajax링크 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./js/mypage/mileage.js"></script>
<!--  mileage페이지의 링크 끝 -->

<!-- <script>
//최근 7일의 마일리지 내역 불러오기
$(document).ready(function(){
	// 현재 일 
	var now = new Date();
	var d2 = new Date().getDate();
	// 현재 기준 7일 전 날짜
	var d1 = new Date().getDate()-6;
	//alert(d1);
	// 년월일 조합해서 변수에 담기 ex> 2018-11-20
	var start_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d1;
	var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
	//alert(end_searchdate);
	// 최근 일주일간의 마일리지 내역 불러오기
	$('.Wsearch').click(function(){
		var start_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d1;
		var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
		// ajax시작
			// MVC2 가상주소 URL로 보내면 ./MileageSearchNav.me -> jsonparsing error
		$.getJSON({
			dataType: "json",
			url:"./mypage/MileageSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate},
			// 성공,  콜백 함수
			success : function(data){
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//버튼1,2,3의  변경되는 css
				$('.Wsearch').css({
					"background-color":"#cc1d1d",
					"color":"white"
				});
				$('.Msearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.HYsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				//최근 일주일의 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.used_m+'</td><td>'+item.storage_m+'</td></tr>');
				});
						
			},
			// 실패, 콜백 함수 에러 메세지
			error: function (jqXHR, textStatus, errorThrown) {
	               alert("ERROR" + textStatus + " : " + errorThrown);
	               alert(data);
	               self.close();}
		});
	});
	//최근 1개월의 마일리지 내역 불러오기
	$('.Msearch').click(function(){
		var start_searchdate = now.getFullYear()+"-"+now.getMonth()+"-"+d2;
		var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
		// ajax시작
		$.getJSON({
			dataType: "json",
			url:"./mypage/MileageSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate},
			success : function(data){
				//페이지를 새로고침
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//버튼1,2,3의  변경되는 css
				$('.Wsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.Msearch').css({
					"background-color":"#cc1d1d",
					"color":"white"
				});
				$('.HYsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				//최근 일주일의 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.used_m+'</td><td>'+item.storage_m+'</td></tr>');
				});
						
			},
			error: function (jqXHR, textStatus, errorThrown) {
	               alert("ERROR" + textStatus + " : " + errorThrown);
	               self.close();}
		});
	});
	//최근 3개월의 마일리지 내역 불러오기
	$('.HYsearch').click(function(){
		var start_searchdate = now.getFullYear()+"-"+(now.getMonth()-3)+"-"+d2;
		var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
		// ajax시작
		$.getJSON({
			dataType: "json",
			url:"./mypage/MileageSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate},
			success : function(data){
				//페이지를 새로고침
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//버튼1,2,3의  변경되는 css
				$('.Wsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.Msearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.HYsearch').css({
					"background-color":"#cc1d1d",
					"color":"white"
				});
				//최근 일주일의 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.used_m+'</td><td>'+item.storage_m+'</td></tr>');
				});
						
			},
			error: function (jqXHR, textStatus, errorThrown) {
	               alert("ERROR" + textStatus + " : " + errorThrown);
	               self.close();}
		});
	});

});

</script> -->
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

<%
List<PaymentBean> m_list = (List)request.getAttribute("m_list");
String email = (String)request.getAttribute("email");
%>

<h1>나의 마일리지 확인</h1>
<!-- 보유마일리지  한눈에 보기 -->
<div id="mileagepreview_sg">
	<div class="showsnakicon_sg">
		<a href="#">
		<img src="./img/photo2.jpg" style="width: 100%;height: 260px;">
		</a>
	</div>
	<div class="previewmileage_sg">
		총 누적 마일리지 : <%=request.getAttribute("total_m") %> <b style="color: #cc1d1d;">M</b><br>
		사용된 마일리지 : <%=(int)request.getAttribute("total_m")-(int)request.getAttribute("current_m") %> <b style="color: #cc1d1d;">M</b><br>
		사용가능 마일리지 : <%=request.getAttribute("current_m") %> <b style="color: #cc1d1d;">M</b>
	</div>
</div>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
Calendar cal = Calendar.getInstance();
String strToday = sdf.format(cal.getTime());
String beforemonth = sdf.format(cal.getTime());
%>
 
<!-- 마일리지 내역 확인하기 -->
<div id="mileageuselist_sg">

<form action="./MemberSearchMC.me" method="post">
<input type="button" value="1주일" id="mdatebtnnav_sg" class="Wsearch">
<input type="button" value="1개월" id="mdatebtnnav_sg" class="Msearch">
<input type="button" value="3개월" id="mdatebtnnav_sg" class="HYsearch">
<input type="date" value="" id="mdate_sg" name="start_searchdate" style="margin-left: 51px;"> ~
<input type="date" value="<%=strToday%>" id="mdate_sg" name="end_searchdate">
<input type="submit" value="조회하기" id="mdatebtn_sg">
</form>

<!-- <div class="tab">
  <button class="tablinks" onclick="openCity(event, 'total')" id="defaultOpen">전체 내역</button>
  <button class="tablinks" onclick="openCity(event, 'used')">사용 내역</button>
  <button class="tablinks" onclick="openCity(event, 'save')">적립 내역</button>
</div> -->

<!-- <div id="total" class="tabcontent"> -->
  <table border="1" class="mileagetable_sg">
  	<tr>
  		<th>일자</th>
  		<th>분류</th>
  		<th>주문번호</th>
  		<th>사용</th>
  		<th>적립</th>
  		<!--<th>잔여 마일리지</th> -->
  	</tr>
  	
<%
for(int i=0;i<m_list.size();i++){
	PaymentBean pb=(PaymentBean)m_list.get(i);
%>
  	<tr class="mempty_sg">
  		<td><%=pb.getPayment_date() %></td>
  		<td><%=pb.getPayment_status() %></td>
  		<td><%=pb.getPayment_num() %></td>
  		<td><%=pb.getUsed_m() %></td>
  		<td><%=pb.getStorage_m() %></td>
  	</tr>
  	<%} %>
  </table>
</div>

<!-- <script>
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
</script> -->


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