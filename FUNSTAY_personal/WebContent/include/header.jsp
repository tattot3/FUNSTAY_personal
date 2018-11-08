<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
   //인원 텍스트창을 클릭하면 스크롤바가 내려온다
$(document).ready(function(){
	$("img_1_WS").click(function(){
		$(this).next().slideToggle('slow');
	});
});
</script>
<section class="sec01_WS">
<table>
<tr>
<td id="pont1_WS"><a href="#">FUNSTAY</a></td>
<td><input type="text" id="text_1_WS" placeholder="검색할 내용을 적으세요"><input type="button" value="검색" id="btn_1_WS"></td>
<td>언어번역기</td>
<td>환율번역기</td>
<td><a href="javascript:void(0)" onclick="document.getElementById('light1').style.display='block';document.getElementById('fade1').style.display='block'"><img src="../img/no_profile.png" id="img_1_WS"></a>
 <div id="light1" class="white_content_1">
  <div>
  <ul id="list_1_WS">
	<li><a href="">프로필정보</a></li>
	<li><a href="">프로필수정</a></li>
	<li><a href="">예약현황</a></li>
	<li><a href="">메시지</a></li>
	<li><a href="">로그아웃</a></li>
  </ul>
  </div>
  <a href="javascript:void(0)" onclick="document.getElementById('light1').style.display='none';document.getElementById('fade1').style.display='none'"><p id="font_2_WS">닫기</p></a>
  </div>
  <div id="fade1" class="black_overlay_1"></div>
</td>
<td><button class="btn_remove" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">login</button>
<!-- 로그인 -->
<div id="id01" class="modal">
  <form class="modal-content animate" action="#">
  <!-- 닫기버튼 스타일 -->
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <!-- 로고스타일 -->    
      <div id="logo_sh">FUNSTAY</div>
    </div>
    <div class="container">
     <div class="join_box">
  <!-- 이메일(아이디)입력 폼 -->   
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
  <!-- 비밀번호 입력 폼 -->
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="myInput" required>
      </div>
  <!-- caps lock -->
     <p id="text">WARNING! Caps lock is ON.</p> 
  <!-- SNS -->
      <div id="col_box">   
	  <div class="col">
        <a href="#" class="btn naver">
          <i class="fa fa-twitter fa-fw"></i>Naver</a>
      </div>
      <div class="col">
        <a href="#" class="btn google">
          <i class="fa fa-google fa-fw"></i>Google</a>
      </div> 
       </div> 
  <!-- 전송버튼 -->     
      <button type="submit" class="subtn"><a>로그인</a></button>
  <!-- 아이디저장  --> 
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
  <!-- 비밀번호 찾기 -->    
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>

<!-- 취소버튼 사용유무    
<div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" 
      class="cancelbtn">Cancel</button> 
    </div> -->
  </form>
</div>
</td>
<td><button class="btn_remove" onclick="document.getElementById('id02').style.display='block'" style="width:auto;">회원가입</button>
<!-- 회원가입 -->
<div id="id02" class="modal">
  <form class="modal-content animate" action="#">
  <!-- 닫기버튼 -->
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <!-- 로고스타일 -->    
      <div id="logo_sh">FUNSTAY</div>
    </div>

    <div class="container">
    <div class="join_box">
<!-- 이메일(아이디)입력 폼 -->    
      <i class="fa fa-envelope icon"></i>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>
<!-- 비밀번호 입력 폼 -->      
<i class="fa fa-key icon"></i>
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="myInput1" required>
<!-- 비밀번호 보이게 -->
      <input type="checkbox" onclick="myFunction()">Show Password<br>
<!-- 비밀번호 확인 폼-->
<i class="fa fa-key icon"></i>
      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
<!-- 생년월일 폼 -->      
<i class="fa fa-heart icon"></i>
      <label for="birth"><b>birth</b></label><br> 
      <input type="text" name="birth_yy" class="birth" placeholder="YY"required> 

      <input type="text" name="birth_mm" class="birth" placeholder="MM"required>

      <input type="text" name="birth_dd" class="birth" placeholder="DD" required><br>  
<!-- 폰번호 폼 -->      
<i class="fa fa-phone icon"></i>
      <label for="phone"><b>phone</b></label>
      <input type="text" placeholder="Enter phone number" name="phone" required><br>   
      
<!-- 아이디저장 -->
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> 자동저장
      </label>
<!-- 약관동의 -->
      <p>계정을 생성하면 이용약관 및 개인정보 보호 정책에 동의하게 됩니다 <a href="#" style="color:dodgerblue"><br>동의약관</a>.</p>
<!-- 전송버튼 -->
      <div class="clearfix">
        <button type="submit" class="subtn"><a>가입완료</a></button>
        </div>
<!-- 취소버튼 사용 유무        
<div class="container" style="background-color:#f1f1f1">
<button type="button" onclick="document.getElementById('id02').style.display='none'" 
 class="cancelbtn">Cancel</button>  -->
      </div>
    </div>
  </form>
</div>
</td>
</tr>
</table>

</section>


</header>