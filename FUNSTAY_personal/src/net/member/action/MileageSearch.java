package net.member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.booking.db.PaymentBean;
import net.member.db.MemberDAO;

public class MileageSearch implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MileageSearch execute()");
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("id");
		email = "kim@gmail.com";
		
		String start_searchdate = request.getParameter("start_searchdate");
		String end_searchdate = request.getParameter("end_searchdate");
		
		MemberDAO mdao = new MemberDAO();
		List<PaymentBean> m_list = mdao.getSearchMileageList(email, start_searchdate, end_searchdate);
		
		request.setAttribute("m_list", m_list);
		int [] getmileage = mdao.gettotalMileage(email);
		
		request.setAttribute("total_m", getmileage[0]);
		System.out.println(getmileage[0]);
		request.setAttribute("used_m", getmileage[1]);
		System.out.println(getmileage[1]);
		request.setAttribute("current_m", getmileage[0]-getmileage[1]);
		forward.setRedirect(false);
		forward.setPath("./mypage/mileage.jsp");
		
		return forward;
	}

}
