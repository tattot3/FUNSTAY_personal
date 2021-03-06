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

<div class="content_top_shj">
<h1 style="float:left;margin:2% 2% 2% 3%;">목록</h1><br><br>
<!-- 변수값:1 --> 
<h3 style="position: relative;
    float: left;
    right: 10%;
    padding: 5% 2% 0 2%;">1개의 리스트</h3>
<!--정렬  -->
<div id="sect_HJ">
<div style="width: 50%;"  id="listmenu_shj">
<ul style="width: 100%;" >
   <li  class='active has-sub' ><a href='#'><span>목록 만들기</span></a>
      <ul>
         <li style="width:100%;" class='has-sub'><a href='#'><span>Product 1</span></a>       
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>     
         </li>
      </ul>
   </li>
</ul>
</div>

<div style="width: 50%;" id="listmenu_shj">
<ul style="" >
   <li class='active has-sub_shj' id="manlist"><a href='#'><span>목록 지우기</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>Product 1</span></a>       
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>     
         </li>
      </ul>
   </li>
</ul>
</div>
</div>
<!-- <h2>리스트 이름</h2> -->
</div>
<div class="clear"></div>
 <div class="content_bottom_shj">



<table id="list_shj" >
	<tr><td onclick="location.href='mywish.jsp'" style="background-image:url('../img/동해.jpg');"><div id="explain_shj">my wish list</div></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
	<tr><td></td><td></td><td></td><td></td></tr>
</table>

 </div> 
 



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