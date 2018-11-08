<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
<div>
<nav id="float_1_WS">
<p>All contents Copyright 2018 FUNSTAY 2018 FUNSTAY Inc. all rights reserved
Contact mail:FUNSTAY@FUNSTAYbiz.com Tel +82 64 123 4315 Fax +82 64 123 4321(※전화나 이메일로 문의해주십시오)</p>
</nav>

<nav>
<a href="https://www.facebook.com/" target="_blank"><img alt="face" src="../img/face.jpg" class="img_2_WS" id="img_2_WS"></a>
<a href="https://www.instagram.com/" target="_blank"><img alt="instar" src="../img/Instagram.png" class="img_2_WS"></a>
<a href="https://twitter.com/" target="_blank"><img alt="twit" src="../img/twitter.png" class="img_2_WS"></a>

<a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><img alt="mail" src="../img/mailicon.jpg" class="img_3_WS"></a>
  <div id="light" class="white_content">
  <div>
 <form action="sendMail.jsp" method="post">
  <table>
  <tr><th colspan="2"><div id="dddd3123">메일보내기</div></th></tr>
   <tr><td>from</td><td><input type="text" name="from" /></td></tr>
   <tr><td>to</td><td><input type="text" name="to" /></td></tr>
   <tr><td>subject</td><td><input type="text" name="subject" /></td></tr>
   <tr><td>content</td><td><textarea name="content" style="width:300px; height:100px;"></textarea></td></tr>
   <tr><td colspan="2" style="text-align:right;"><input type="submit"  valwidvalue="Transmission" value="보내기"/></td></tr>
   </table>
   </form>
   </div>
   
  <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><p id="font_2_WS">닫기</p></a>
  </div>
  <div id="fade" class="black_overlay"></div>
  </nav>
</div>
</footer>