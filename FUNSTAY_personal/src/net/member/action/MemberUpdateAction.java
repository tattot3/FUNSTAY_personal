package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		ActionForward forward = new ActionForward();
		if(email==null){
			forward.setPath("./MemberLogin.me");
			forward.setRedirect(true);
			return forward;
		}
		MemberDAO mdao = new MemberDAO();
		MemberBean mb = new MemberBean();
		mb.setEmail(request.getParameter("email"));
		mb.setPass(request.getParameter("pass"));
		mb.setName(request.getParameter("name"));
		mb.setprofile_photo(request.getParameter("profile_photo"));
		mb.setPhone(request.getParameter("phone"));
		mb.setBirth(request.getParameter("birth"));
		mb.setMileage(Integer.parseInt(request.getParameter("mileage")));
		
		int check = mdao.updateMember(mb);
		
		if(check == 1){
			//수정성공시
			forward = new ActionForward();
			forward.setPath("./Main.me");
			forward.setRedirect(true);
		}else if(check == 0){
			//비밀번호 틀림
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호틀림');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}else{
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디없음');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		return null;
	}
}
