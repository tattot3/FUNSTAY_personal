<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function(){
	// 활성화된 페이지의 주소값 나누기
	var curhref = window.location.href;
	var splithref = curhref.substr(39);
	//alert(splithref); // mypage/messageList.jsp
	// 회원관리목록에 저장된 a 태그의 href주소값 나누기
	var ahref = $('.aa').attr('href');
	var splita = ahref.substr(3); 
	//alert(splita); // mypage/messageList.jsp
	/* var active = document.$('.active').$('a').attr('href');
	alert(active); */
	var href1 = $('.a a:eq(0)').attr('href');
	//.a클래스의 하위 a태그중 0번째 태그의 href값
	var href2 = $('.a a:eq(4)').attr('href').substr(3);
	//.a클래스의 하위 a태그중 4번째 태그의 href값에서 4번째 부터 불러옴
	//alert(href2);
	for(var i=0; i<=5; i++){
		if(splithref==$('.a a:eq('+i+')').attr('href').substr(3)){
			//alert("일치합니다.");//현재페이지의 주소값과 a태그의 href값이 같으면 일치메세지 띄우기 
			$('.a a:eq('+i+')').css({"border-bottom":"4px solid #fc4401"});
			break;
		}
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
</script>

<div id="leftsection"></div>
<div id="wrap">
<div class="sub_menu">
<ul>
	<li class="a"><a href="#">회원 정보 수정</a></li>
	<li class="a"><a href="../payment/PaymentForm.jsp">결제내역</a></li>
	<li class="a"><a href="../myinfo/wishlist.jsp">위시리스트</a></li>
	<li class="a"><a href="../mypage/mileage.jsp">마일리지</a></li>
	<li class="a"><a href="../mypage/messageList.jsp" class="aa">메세지함</a></li>
	<li class="a"><hr></li>
	<li class="a"><a href="#" class="aa">숙소 정보 수정</a></li>
	<li class="a"><a href="#">숙소 삭제</a></li>
	<li class="a"><a href="#">예약 관리</a></li>
	<li class="a"><a href="#">메세지함</a></li>
</ul>
</div>