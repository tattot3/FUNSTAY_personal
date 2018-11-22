package net.booking.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.booking.db.BookingDAO;
import net.booking.db.PaymentBean;

public class BookingAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("bookingAction execute()");
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");
		int [] room_num = null;
		int room_num1 = Integer.parseInt(request.getParameter("room_num[0]"));
		int room_num2 = Integer.parseInt(request.getParameter("room_num[1]"));
		Date check_in = Date.valueOf(request.getParameter("check_in"));
		Date check_out = Date.valueOf(request.getParameter("check_out"));
		//int price = 200000;
		int people = Integer.parseInt(request.getParameter("people"));
		String host_email = request.getParameter("host_email");
		int fees = Integer.parseInt(request.getParameter("fees"));
		int sum_price= Integer.parseInt(request.getParameter("sum_price"));
		int home_num = Integer.parseInt(request.getParameter("home_num"));
		String member_email = request.getParameter("member_email");
		String room_subject = request.getParameter("room_subject");
		String request_msg = request.getParameter("request_msg");
		int storage_m = Integer.parseInt(request.getParameter("storage_m"));
		int used_m = Integer.parseInt(request.getParameter("used_m"));
		String payment_status = "결제완료";
		
		//payment테이블에 들어갈 내용 paymentbean에 저장
		PaymentBean pb = new PaymentBean();
		pb.setFees(fees);
		pb.setHost_email(host_email);
		pb.setMember_email(member_email);
		pb.setPayment_status(payment_status);
		pb.setRequest_msg(request_msg);
		pb.setStorage_m(storage_m);
		pb.setUsed_m(used_m);
		pb.setSum_price(sum_price);
		
		BookingDAO bdao = new BookingDAO();
		//결제 내역과 정보 저장
		bdao.insertPayment(pb);
		
		//보유 마일리지 업데이트
		bdao.updatemileage(member_email);
		
		
		forward.setRedirect(false);
		forward.setPath("./payment/complete.jsp");
		
		return forward;
	}

}
