package net.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFrontController extends HttpServlet{
	
	//http://localhost:8080/FUNSTAY/MemberMain.me
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		String requestURI = request.getRequestURI();
		System.out.println("URL 요청:" + requestURI);
		
		String ContextPath = request.getContextPath();
		System.out.println("프로젝트 이름 길이:"+ContextPath.length()); //>>8자
		String command= requestURI.substring(ContextPath.length());
		
		System.out.println("뽑아온 가상의 주소:" + command);//>>/*.me
		
		ActionForward forward = null;
		Action action = null;
		
		//join
		if(command.equals("/MemberMain.me")){
			forward = new ActionForward();
			forward.setPath("./main/index.jsp");
			/*forward.setPath("./include/header.jsp");*/
			forward.setRedirect(false);
			
		}else if(command.equals("/MemberJoinAction.me")){
			action = new MemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			
		//login
		}else if(command.equals("/MemberLogin.me")){
			forward = new ActionForward();
			forward.setPath("./main/index.jsp");
			/*forward.setPath("./include/header.jsp");*/
			forward.setRedirect(false);
		}else if(command.equals("/MemberLoginAction.me")){
			action = new MemberLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		//main	
		}else if(command.equals("/Main.me")){
			forward = new ActionForward();
			forward.setPath("./main/index.jsp");
			/*forward.setPath("./main/header.jsp");*/
			forward.setRedirect(false);
			
		//logout
		}else if (command.equals("/MemberLogout.me")) {
			action = new MemberLogoutAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		//update
		}else if(command.equals("/MamberUpdate.me")){
			action = new MemberUpdate();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/MemberUpdateForm.me")){
			forward = new ActionForward();
			forward.setPath("./mypage/update.jsp");
			forward.setRedirect(false);
		}else if(command.equals("/MemberUpdateAction.me")){
			action = new MemberUpdateAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		//delete	
		}else if(command.equals("/MemberDelete.me")){
			forward = new ActionForward();
			forward.setPath("./mypage/delete.jsp");
			forward.setRedirect(false);
		}else if(command.equals("/MemberDeleteAction.me")){
			action = new MemberDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		//milege
		}else if(command.equals("/MemeberMileage.me")){
			action = new MemberMileage();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){e.printStackTrace();}
		}
		
		
		
		
		
		
		
		if (forward != null) { // 이동할 정보가 있으면
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
		
	}//doProcess
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doget");
		doProcess(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("dopost");
		doProcess(request, response);	
	}
	
}
