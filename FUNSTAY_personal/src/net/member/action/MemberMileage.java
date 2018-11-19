package net.member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.booking.db.PaymentBean;
import net.member.db.MemberDAO;

public class MemberMileage implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MemberMileage execute()");
		ActionForward forward = new ActionForward();
		/*HttpSession session = request.getSession();
		String email = (String)session.getAttribute("id");*/
		String email = "kim@gmail.com";
		
		MemberDAO mdao = new MemberDAO();
		List<PaymentBean> m_list= mdao.getMileageList(email);
		System.out.println(m_list);
		
		request.setAttribute("m_list", m_list);
		request.setAttribute("email", email);
		
		forward.setRedirect(false);
		forward.setPath("./mypage/mileage.jsp");
		
		return forward;
	}
	
	

}
