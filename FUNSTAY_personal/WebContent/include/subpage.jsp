<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- <script type="text/javascript">
$(document).ready(function(){
	// 활성화된 페이지의 주소값 나누기
	var pathref = window.location.path;
	pathref = $(location).attr('path');
	pathref = window.location.origin;
	alert(pathref);
	var pathref1 = window.location.pathname;
	alert(pathref1);
		var curhref = window.location.href;
		var splithref = curhref.substr(39);
	var pathArray = window.location.pathname.split('/');
	alert(pathArray[0]);
	alert(pathArray[1]);
	alert(pathArray[2]);
	//alert(splithref); // mypage/messageList.jsp
	// 회원관리목록에 저장된 a 태그의 href주소값 나누기
	//var ahref = $('.aa').attr('href');
	//var splita = ahref.substr(2); 
	//alert(splita); // mypage/messageList.jsp
	//var active = document.$('.active').$('a').attr('href');
	//alert(active);
	//var href1 = $('.a a:eq(0)').attr('href');
	//.a클래스의 하위 a태그중 0번째 태그의 href값
	//var href2 = $('.a a:eq(3)').attr('href').substr(2);
	//.a클래스의 하위 a태그중 4번째 태그의 href값에서 4번째 부터 불러옴
	//alert(href2);
	for(var i=0; i<=5; i++){
		if(splithref==$('.a a:eq('+i+')').attr('href').substr(2)){
			//alert("일치합니다.");//현재페이지의 주소값과 a태그의 href값이 같으면 일치메세지 띄우기 
			$('.a a:eq('+i+')').css({"border-bottom":"4px solid #cc1d1d"});
			break;
		}
	}if(splithref==("MemberSearchMC.me")){
		$('.a a:eq('+3+')').css({"border-bottom":"4px solid #cc1d1d"});
	}
	/* if(splithref==$('.a a:eq(4)').attr('href').substr(3)){
		//alert("일치합니다.");//현재페이지의 주소값과 a태그의 href값이 같으면 일치메세지 띄우기 
		$('.a:eq(4)').css({
			background:'pink'
		});
	}else if(splithref!=$('.a a:eq(4)').attr('href').substr(3)){
		alert("불일치");
	} */
	//서브페이지 active 메뉴	
});
</script> -->
<script type="text/javascript">
// 현재 활성화 되어있는 페이지에 해당하는 멤버 목록을 border-bottom으로 밑줄 표시
$(document).ready(function(){
	var pathArray = window.location.pathname.split('/');
	// 마일리지 페이지의 기간 검색을 하면 가상 주소가 바뀌기 때문에 별도로 주소값을 지정
	if(pathArray[2]==("MemberSearchMC.me")){
		$('.a a:eq('+3+')').css({"border-bottom":"4px solid #cc1d1d"});
	}
	for(var i=0; i<=10; i++){
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
	<li class="a"><a href="#">회원 정보 수정</a></li>
	<li class="a"><a href="./Booking.bo">결제내역</a></li>
	<li class="a"><a href="../myinfo/wishlist.jsp">위시리스트</a></li>
	<li class="a"><a href="./MemberMileage.me" class="aa">마일리지</a></li>
	<li class="a"><a href="../mypage/messageList.jsp">메세지함</a></li>
	<li class="a"><hr></li>
	<li class="a"><a href="#">숙소 정보 수정</a></li>
	<li class="a"><a href="#">숙소 삭제</a></li>
	<li class="a"><a href="#">예약 관리</a></li>
	<li class="a"><a href="#">메세지함</a></li>
</ul>
</div>