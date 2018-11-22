package net.host.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.booking.db.PaymentBean;
import net.host.db.HostDAO;

public class HostCash implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("HostCash execute()");
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String host_email = (String)session.getAttribute("email");
		host_email = "seoul@gmail.com";
		
		HostDAO hdao = new HostDAO();
		
		//	호스트 여부 체크
		int result = hdao.hostCehck(host_email);
		
		if(result==1){
			System.out.println("host");
			// 해당 호스트의 cash내역을 list에 저장
			List<PaymentBean> c_list = hdao.getCashList(host_email);
			
			forward.setRedirect(false);
			forward.setPath("./mypage/HostCash.jsp");
		}else{
			System.out.println("not host");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("aler('유효한 접근이 아닙니다');");
			out.println("history.back();");
			out.println("</script>");
			return null;
		}
		
		return forward;
	}
	
	

}
