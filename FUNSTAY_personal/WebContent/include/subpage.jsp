<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">
// 현재 활성화 되어있는 페이지에 해당하는  목록을 border-bottom으로 밑줄 표시해주는 jquery
$(document).ready(function(){
	var pathArray = window.location.pathname.split('/');
	// 마일리지 페이지의 기간 검색을 하면 가상 주소가 바뀌기 때문에 별도로 주소값을 지정
	if(pathArray[2]==("MemberSearchMC.me")){
		$('.a a:eq('+3+')').css({"border-bottom":"4px solid #cc1d1d"});
	}
	for(var i=0; i<10; i++){
		if(pathArray[2]==$('.a a:eq('+i+')').attr('href').substr(2)){
			$('.a a:eq('+i+')').css({"border-bottom":"4px solid #cc1d1d"});
			break;
		}
	}
});
</script>

<div id="leftsection"></div>
<div id="wrap">
<div class="sub_menu">
<ul>	
	<li><a href="#">서브페이지 </a></li>
	<li class="a"><a href="./MemberUpdate.me">회원 정보 수정</a></li>
	<li class="a"><a href="./Booking.bo">예약및결제하기<br>(삭제 예정)</a></li>
	<li class="a"><a href="./MyReserve.bk">MY RESERVE</a></li>
	<li class="a"><a href="./Wishlist.wi">위시리스트</a></li>
	<li class="a"><a href="./MemberMileage.me" class="aa">마일리지</a></li>
	<li class="a"><a href="./MemberQNA.me">문의 확인</a></li>
	<li><hr></li>
	<li class="a"><a href="#">숙소 정보 수정(없음)</a></li>
	<li class="a"><a href="#">숙소 삭제(없음)</a></li>
	<li class="a"><a href="#">예약 관리(없음)</a></li>
	<li class="a"><a href="./HostCash.ho">MY CASH</a></li>
</ul>
</div>
