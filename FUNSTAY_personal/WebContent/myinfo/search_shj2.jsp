<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/myinfo/search_center_shj.css" rel="stylesheet">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.4.2/css/all.css' integrity='sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns' crossorigin='anonymous'>
	<!-- 아이콘 추가 -->
</head>
<body>
<!-- 헤더  -->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- 헤더  -->
<hr>
<jsp:include page="../include/subpage.jsp"></jsp:include>
<!-- 각 페이지 내용을  content 영역 안에 배치 해주세요.-->
<div> <!-- 인클루드 에러 때문에 넣었음.나중에 지우기 -->
<div id="content">
<!-- 여기서부터 페이지 내용을 적어주세요. -->
<div class="content_top_shj" >

<!-- 변수값 : "부산광역시", "100" -->
<h1 style="float:left;margin:2% 2% 2% 3%;">"부산광역시"검색결과, "100"개의 정보를 찾았습니다.</h1><br>

<!--정렬  -->
<div style="width:8%" id='listmenu_shj'>
<ul style=" width: 114%;" >
   <li class='active has-sub_shj'><a href='#'><span  class='fas'>정렬  &#xf107; &#xf106;</span></a>
      <ul>
         <li class='has-sub_shj'><a href='#'><span  class='fas'>최신순 &#xf107; &#xf106;</span></a>
         </li>
         <li class='has-sub_shj'><a href='#'><span  class='fas'>인기순  &#xf107; &#xf106;</span></a>
         </li>
      </ul>
   </li>
</ul>
</div>
 


</div>
<div class="clear"></div>

<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo1.jpeg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo2.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo3.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>

<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo1.jpeg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo2.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>
<a href="#">
<div class="mywish_shj">
 <div id="outerbox"> <img src="../img/photo3.jpg"> </div>
 <div id="imginfo_shj">
  <div id="info_1_shj">부산광역시 해운대</div>
  <div id="info_2_shj">35,000 / 박</div>
  <div id="info_3_shj">3.5 ㅇㅇㅇㅇㅇ25</div>
 </div>
</div>
</a>

<div class="pageNum_shj">
<a href="#" class="previous round">&#8249;</a>
<b><a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
 <a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a></b>
<a href="#" class="next round">&#8250;</a>

</div>
<!-- 페이지 내용이 끝나는 부분입니다. -->
</div>
</div>
</div><!-- subpage include 파일에서 나온 div 닫기 태그 -->



<div class="clear"></div>
<hr>
<!-- footer -->
<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- footer -->
</body>
</html>