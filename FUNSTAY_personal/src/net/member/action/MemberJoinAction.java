package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberJoinAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		MemberBean mb = new MemberBean();
		mb.setEmail(request.getParameter("email"));
		mb.setPass(request.getParameter("pass"));
		mb.setName(request.getParameter("name"));
		/*mb.setprofile_photo(request.getParameter("profile_photo"));*/
		mb.setPhone(request.getParameter("phone"));
		mb.setBirth(request.getParameter("birth_yy")+"/"+request.getParameter("birth_mm")+"/"+request.getParameter("birth_dd"));
		/*mb.setMileage(Integer.parseInt(request.getParameter("mileage")));*/
		
		
	/*String birth = birth_yy +"/"+birth_mm+"/"+birth_dd;
		
		MemeberBean mb = new MemberBean();
		mb.setbirth(birth);*/
	

		MemberDAO mdao = new MemberDAO();
		mdao.insertMember(mb);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./MemberLogin.me");
		forward.setRedirect(true);
		
		return forward;
	}
	
}
