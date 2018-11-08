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
<link href="../css/default/default.css" rel="stylesheet">
<!-- 페이지 default 링크 끝 -->

<!-- payment.jsp 링크 -->
<link href="../css/payment/PaymentForm.css" rel="stylesheet">	
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" 
integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">

</head>
<body>
<!-- header  시작-->
<%-- <jsp:include page="../include/header.jsp"></jsp:include> --%>
<!-- header  끝-->
<hr>

<div id="content">
<!-- 페이지내용 시작 -->

<div id="splitwraptotal_sg">
<h1>결제하기</h1>
<div class="paysnakmsg_sg">
	<div class="heightcenterfit_sg">
	<i class="fas fa-spinner"></i>
	</div>
	<p>결제 도중 같은 날짜의 룸에 다른 고객님의 결제가 이루어지면 예약이 조기 마감될수 있습니다.</p>
</div>
</div>
<div class="clear"></div>
<!-- 결제 모듈에 전송될 파라메터들을 form태그 안에 배치 -->
<form>

<!-- 주문 정보 영역 시작 -->
<div id="splitwrapright_sg">
<div id="paymentinfo_sg">
<h3>주문 정보</h3>
주문번호 : djfigieowkdfj02983<br>
<a href="#"><img src="../img/photo2.jpg" alt="숙소 미리보기 사진"></a>
<a href="#">강남 도심중심 시티뷰가 멋있는 방</a><br><hr>
<i class="fas fa-user-alt"></i> x 4명<br>
<i class="far fa-calendar-check"></i> 
	2018.11.02
	<i class="fas fa-long-arrow-alt-right"></i> 
	 2018.11.05<br>
<i class="fas fa-coins"></i> 25,000\ x 2박<br>
<div class="paytotal_sg">
<i class="fas fa-long-arrow-alt-right"></i> 
<i class="fas fa-coins"></i> 50.000\
</div>
</div>
</div>

<!-- 결제 정보 영역 시작 -->
<div id="splitwrapleft_sg">
<div id="paymemberinfo_sg">
<h3>결제 정보</h3>
<table>
<tr>
	<td>결제수단</td>
	<td><i class="far fa-credit-card"></i> 신용카드</td>
</tr>
<tr>
	<td></td>
	<td></td>
</tr>
<tr>
	<td>성함</td>
	<td> <input type="text"></td>
</tr>
<tr>
	<td>이메일 주소</td>
	<td> <input type="text"></td>
</tr>
<tr>
	<td>전화번호</td>
	<td> <input type="text"></td>
</tr>
<tr>
	<td class="line-height">요청 메세지</td>
	<td><textarea rows="3" cols="10" placeholder="호스트에게 요청사항을 적어주세요"></textarea></td>
</tr>
</table>
</div>
</div>
<div class="clear"></div>
<div id="splitwrapright_sg">
<input type="button" value="결제하기" id="check_module">
</div>
</form>
<script src="../js/payment/PaymentForm.js"></script>

<input type="button" value="날짜 확인test" id="datebtn">
<script>
$("#datebtn").click(function(){
	var newdate=new Date();
	var deadline = new Date().getDate() + 3;
	alert("현재 : "+newdate);
	alert("현재 날짜 : "+newdate.getDate());
	alert("현재 년도 : "+newdate.getFullYear())//년도
	alert("현재 월 : "+newdate.getMonth())//월
	alert("기한 날짜 : "+deadline);//기한날짜
});

</script>

<!-- 페이지내용 끝 -->
</div>
<div class="clear"></div>
<hr>
<!-- footer 시작-->
<%-- <jsp:include page="../include/footer.jsp"></jsp:include> --%>
<!-- footer 끝-->
</body>
</html>