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
<!-- 페이지 default 링크 끝-->
 

<!-- 
	css파일 연결할때 예시 
	<link href="../css/jsp파일이 있는 폴더와 동일한 폴더를 css폴더 안에 만들고 폴더의 이름을 이곳에 써주세요/css파일 이름.css" rel="stylesheet"> 
	[예시] : message폴더에 message_list.jsp파일을 만들었을 경우
		css>message>message_list.css 파일이있어야합니다. 아래는 적용 link코드 입니다.
		<link href="../css/message/message_list.css" rel="stylesheet">	
	** js파일 적용방법도 동일합니다.
	 	<script src="../js/mypage/message_list.js"></script>
	** 해당 페이지의 연결링크와 스크립트를 head에 넣을때 default링크와 섞이지 않도록 주석으로 구분해서 넣어주세요
-->
<link href="../css/QnA/QnA.css" rel="stylesheet">


</head>
<body>
<!-- header  시작-->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- header  끝-->
<hr>

<div id="content">
<!-- 페이지내용 시작 -->

<div class="panel_box">
  <h1 class="tite">QnA</h1>
  <!--qna시작 -->
  <p>계정등록</p>
<button class="accordion">계정은 어떻게 만드나요?</button>
<div class="panel">
  <p>이메일 주소, 페이스북 계정, 구글 계정 사용하여 회원으로 가입하실 수 있습니다. 회원 가입과 계정 만들기는 무료입니다.</p>
</div>
<p>예약관련</p>
<button class="accordion">예약현황 확인은 어디서 하나요?</button>
<div class="panel">
  <p>결제 정보를 입력해야 합니다.
호스트가 예약 요청을 수락해야 합니다
(단, 즉시 예약이 가능한 숙소에 예약 요청을 보내면, 예약 요청이 자동으로 수락됩니다).
호스트가 예약 요청을 수락하면 이메일로 알림을 받게 되며, 예약 요청 상태도 수락됨으로 변경됩니다.</p>
</div>

<p>프로필 수정</p>
<button class="accordion">프로필 수정은 어떻게 하나요?</button>
<div class="panel">
  <p>프로필로 이동합니다. 회원정보 수정하기를 클릭합니다.</p>
</div>
<button class="accordion">후기 를 수정할려면 어떻게 하나요?</button>
<div class="panel">
  <p>프로필로 이동합니다.  
	후기를 클릭합니다. 내가 작성한 후기를 선택합니다. 수정하려는 후기를 찾습니다.</p>
</div>
<button class="accordion">계정을 삭제할려면 어떻게하나요?</button>
<div class="panel">
  <p> 프로필로 이동합니다(로그인하지 않은 경우에는 로그인 화면이 뜹니다).계정삭제 하기를 클릭합니다.</p>
</div>
<button class="accordion">결제내역 확인은 어떻게하나요?</button>
<div class="panel">
  <p> .</p>
</div>
<button class="accordion">마일리지 확인은 어떻게하나요?</button>
<div class="panel">
  <p> .</p>
</div>
<button class="accordion">메세지확인은 어떻게하나요?</button>
<div class="panel">
  <p> .</p>
</div>
<button class="accordion">위시리스트 확인은 어떻게하나요?</button>
<div class="panel">
  <p> .</p>
</div>
<p>호스트</p>
<button class="accordion">호스트가 되기위한 조건이 있나요?</button>
<div class="panel">
  <p>대부분의 지역에서 간편하게 호스트가 될 수 있으며 언제나 무료로 숙소를 등록할 수 있습니다.호스트로서 준수해야 할 안전, 보안, 신뢰성, 호스팅과 관련된
 에어비앤비 커뮤니티의 기준을 확인해보세요. 해당 기준을 참조하면 게스트로부터 긍정적인 후기를 받는 데 도움이 됩니다..</p>
</div>

<script src="../js/QnA/QnA.js"></script>
  <!-- //qna끝 -->
  
</div><!-- //panel_box -->
</div><!-- //content -->

 <div id="top_quick">
   <a href="#">top</a>
 </div>


<!-- 페이지내용 끝 -->
</div>
<div class="clear"></div>
<hr>
<!-- footer 시작-->
<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- footer 끝-->
</body>
</html>