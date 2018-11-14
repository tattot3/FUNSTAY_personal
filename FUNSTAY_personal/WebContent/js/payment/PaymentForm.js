$("#check_module").click(function(){
	
	var IMP = window.IMP; // 생략가능
	IMP.init('imp77845059');


	IMP.request_pay({
	    pg : 'html5_inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : 14000,
	    /*buyer_email : 'iamport@siot.do',*/
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    /*buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456',*/
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete',
	   /* vbank_due : (선택항목) YYYYMMDDhhmm 형식 가상계좌이체시 필요*/
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 주문거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
			    // [1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
			jQuery.ajax({
				url : "/payment/complete.jsp",
				//url : "/payments/complete", // cross-domain error가 발생하지 않도록 동일한
											// 도메인으로 전송
				type : 'POST',
				dataType : 'json',
				data : {
					imp_uid : rsp.imp_uid,
					merchant_uid : rsp.merchant_uid
				// 기타 필요한 데이터가 있으면 추가 전달
				}
			}).done(function(data) {
				// [2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				if (everythings_fine) {
					var msg = '결제가 완료되었습니다.';
					msg += '\n고유ID : ' + rsp.imp_uid;
					msg += '\n상점 거래ID : ' + rsp.merchant_uid;
					msg += '\결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;

					alert(msg);
				} else {
					// [3] 아직 제대로 결제가 되지 않았습니다.
					// [4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
					var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
				}
			});
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
	
});