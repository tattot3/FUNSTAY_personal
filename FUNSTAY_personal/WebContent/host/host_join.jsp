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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.4.1/css/all.css'
	integrity='sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz'
	crossorigin='anonymous'>
<link href="../css/host/host.css" rel="stylesheet">
<!-- <link href="../css/SubPage.css" rel="stylesheet"> -->
<script src="../host/zipcode.jsp"></script>

</head>
<body>
<!-- header  시작-->
<jsp:include page="../include/header.jsp"></jsp:include>
<!-- header  끝-->
<hr>

<div id="content">
<!-- 페이지내용 시작 -->

<script>
/*인원수*/
var j=0; //인원수 초기화 

function fr1() { //인원수 증가
	j+=1;
	document.fff.text11.value=j;
	return j;
}

function fr2() { //인원수 감소
	if(j>0){
	j-=1;
	}
	document.fff.text11.value=j;
	return j;
}



</script>



<form action="#" method="post" name="fff">
<table id="host1" border="1">
<tr><td class="td"><h1 id="host">호스트 등록</h1></td></tr>
<tr><td><b>숙소 이름</b></td></tr>
<tr><td class="td"><input type="text" size="100"></td></tr>
<tr><td><b>숙소 설명(주의사항,규칙,기타 정보 등을 적어주세요)</b></td></tr>
<tr><td class="td"><textarea rows="10" cols="100" name="txt"></textarea></td></tr>

<tr><td class="td"><b>욕실 개수</b>
<select class="sel">
 <option selected>욕실개수를 선택하세요</option>
 <option>1개</option>
 <option>2개</option>
 <option>3개</option>
 <option>4개이상</option>
</select></td></tr>


<tr><td class="td"><b>방 개수</b>
<select class="sel">
 <option selected>방개수를 선택하세요</option>
 <option>1개</option>
 <option>2개</option>
 <option>3개</option>
 <option>4개</option>
 <option>5개</option>
</select></td></tr>

<tr><td class="td"><b>숙소 유형</b>
<select class="sel">
 <option selected>숙소유형을 선택하세요</option>
 <option>집전체</option>
 <option>개인실</option>
 <option>다인실</option>
</select></td></tr>

<tr><td class="td"><b>최대 숙박 인원</b>
<input type="button" value="-" onclick="fr2()" class="num_btn">
        <input type="text" id="text11" size="3" placeholder="0">
        <input type="button" value="+" onclick="fr1()" class="num_btn"></td></tr>

<tr><td class="td"><b>가격</b>
<input type=text value="￦"></td></tr>

<tr><td><b>방 사진</b></td></tr>
<tr><td>

<div></div>
<label for="file" class="upload-hidden"><b class="plus">+</b><br><b class="up">사진업로드</b></label>
<input type="file" id="file">

</td></tr>

<tr><td class="td"><b>편의시설</b></td></tr>
<tr><td><input type="checkbox" value=""> <i class='far fa-lightbulb' style='font-size:20px'></i> 필수품목</td></tr>
<tr><td><input type="checkbox" value=""> <i class="fa fa-wifi"></i> 와이파이</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-parking' style='font-size:20px'></i> 주차가능</td></tr>
<tr><td><input type="checkbox" value=""> <img src="../img/icon/shampoo.png" width="15px" height="25px"> 샴푸</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-thermometer-empty' style='font-size:20px'></i> 에어컨</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-thermometer-full' style='font-size:20px'></i> 난방</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-paw'></i> 반려동물</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fab fa-accessible-icon' style='font-size:20px'></i> 장애인시설</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-birthday-cake' style='font-size:20px'></i> 파티가능</td></tr>
<tr><td><input type="checkbox" value=""> <i class="fa fa-car" style="font-size:20px"></i> 픽업가능</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-sort' style='font-size:20px'></i> 엘리베이터</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-utensils'></i> 조식제공</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-smoking'></i> 흡연가능</td></tr>
<tr><td><input type="checkbox" value=""> <img src="../img/icon/washing.png" width="15px" height="20px"> 세탁기</td></tr>
<tr><td><input type="checkbox" value=""> <img src="../img/icon/iron-512.png" width="20px" height="20px"> 다리미</td></tr>
<tr><td><input type="checkbox" value=""> <img src="../img/icon/table-512.png" width="20px" height="20px"> 업무가능공간/책상</td></tr>
<tr><td><input type="checkbox" value=""> <i class='fas fa-bed' style='font-size:15px'></i> 간이침대</td></tr>
<tr><td><input type="checkbox" value=""> <img src="../img/icon/hair_dryer-512.png" width="20px" height="20px"> 헤어드라이기</td></tr>

<tr><td class="td"><b>주소</b></td></tr>
<tr><td><input type ="text" size="60" id="address" placeholder="주소를 입력해주세요" name="add1">
<input type="button" value="주소찾기" onclick="daumPostcode()" class="btn"></td></tr>
<tr><td class="td">
<b>위치가 정확한지 확인해주세요</b></td></tr>
<tr><td><div id="map" style="width:500px;height:400px;"></div>
</td></tr>

<tr><td><input type="submit" value="숙소등록" class="btn"></td></tr>
</table>
</form>


<!-- 주소와 지도가 보여지는 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5bd0699811ddfc0b8ef260a07e7c9163&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = fullAddr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>
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