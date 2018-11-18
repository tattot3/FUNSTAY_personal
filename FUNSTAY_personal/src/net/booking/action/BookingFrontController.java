package net.booking.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookingFrontController extends HttpServlet{
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		System.out.println("BookingController doProcess");
		String requestURI = request.getRequestURI();
		String ContextPath = request.getContextPath();
		String command = requestURI.substring(ContextPath.length());
		ActionForward forward = null;
		Action action= null;
		if(command.equals("/Booking.bo")){
			action = new Booking();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){e.printStackTrace();}
		} else if(command.equals("/MyMileage.bo")){
			
		}
		//이동
		if(forward != null){
			if(forward.isRedirect()){
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}
}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	
	

}
