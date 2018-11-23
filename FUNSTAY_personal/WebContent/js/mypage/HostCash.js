//최근 7일의 마일리지 내역 불러오기
$(document).ready(function(){
	// 현재 일 
	var now = new Date();
	var d2 = new Date().getDate();
	// 현재 기준 7일 전 날짜
	var d1 = new Date().getDate()-6;
	//alert(d1);
	// 년월일 조합해서 변수에 담기 ex> 2018-11-20
	var start_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d1;
	var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
	//alert(end_searchdate);
	
	//최근 1개월의 마일리지 내역 불러오기
	$('.Msearch').click(function(){
		var start_searchdate = now.getFullYear()+"-"+now.getMonth()+"-"+d2;
		var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
		// JSON시작
		$.getJSON({
			dataType: "json",
			url:"./mypage/CashSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate},
			success : function(data){
				//페이지를 새로고침
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//버튼1,2,3의  변경되는 css
				$('.Wsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.Msearch').css({
					"background-color":"#cc1d1d",
					"color":"white"
				});
				$('.HYsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				//최근 일주일의 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.cash+'</td></tr>');
				});
						
			},
			error: function (jqXHR, textStatus, errorThrown) {
				   alert("검색 옵션을 선택해주세요");
	               //alert("ERROR" + textStatus + " : " + errorThrown);
	               self.close();}
		});
	});
	//최근 3개월의 마일리지 내역 불러오기
	$('.HYsearch').click(function(){
		var start_searchdate = now.getFullYear()+"-"+(now.getMonth()-3)+"-"+d2;
		var end_searchdate = now.getFullYear()+"-"+(now.getMonth()+1)+"-"+d2;
		// JSON시작
		$.getJSON({
			dataType: "json",
			url:"./mypage/CashSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate},
			success : function(data){
				//페이지를 새로고침
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//버튼1,2,3의  변경되는 css
				$('.Wsearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.Msearch').css({
					"background-color":"transparent",
					"color":"#313131"
				});
				$('.HYsearch').css({
					"background-color":"#cc1d1d",
					"color":"white"
				});
				//최근 일주일의 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.cash+'</td></tr>');
				});
						
			},
			error: function (jqXHR, textStatus, errorThrown) {
				   alert("검색 옵션을 선택해주세요");
	               //alert("ERROR" + textStatus + " : " + errorThrown);
	               self.close();}
		});
	});
	//커스텀 검색 마일리지 내역 불러오기
	$('.mdatebtn_sg').click(function(){
		var home_num = $('.room_subselect_sg').val();
		var start_searchdate = $('.start_searchdate').val();
		var end_searchdate = $('.end_searchdate').val();
		// JSON시작
		$.getJSON({
			dataType: "json",
			url:"./mypage/CashCustomSearchNav.jsp",
			data : {start_searchdate:start_searchdate, end_searchdate:end_searchdate, home_num:home_num},
			success : function(data){
				//페이지를 새로고침
				//기존에 테이블에 있던 데이터들 삭제
				$('.mempty_sg').empty();
				//검색된 마일리지내역을 테이블에 출력
				$.each(data,function(index,item){
					$('.mileagetable_sg').append('<tr class="mempty_sg"><td>'+item.payment_date+'</td><td>'+item.payment_status+'</td><td>'+item.payment_num+'</td><td>'+item.cash+'</td></tr>');
				});
						
			},
			error: function (jqXHR, textStatus, errorThrown) {
				   alert("검색 옵션을 선택해주세요");
	               //alert("ERROR" + textStatus + " : " + errorThrown);
	               self.close();}
		});
	});
});
