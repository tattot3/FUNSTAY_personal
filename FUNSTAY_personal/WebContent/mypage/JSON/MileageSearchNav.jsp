<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String email = (String)session.getAttribute("email");
email="kim@gmail.com";
String start_searchdate = request.getParameter("start_searchdate");
String end_searchdate = request.getParameter("end_searchdate");
System.out.println(start_searchdate);
System.out.println(end_searchdate);

//start_searchdate="2018-10-16";
//end_searchdate="2018-10-22";
JSONArray arr = new JSONArray();

Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/funstay";
String dbUser="root";
String dbPass="1234";
Connection con = DriverManager.getConnection(dbUrl,dbUser,dbPass);
String sql = "select * from payment where payment_date between ? and ? and member_email=? order by payment_date desc";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, start_searchdate);
pstmt.setString(2, end_searchdate);
pstmt.setString(3, email);
ResultSet rs = pstmt.executeQuery();


	while(rs.next()){
	
	JSONObject pb=new JSONObject();
	pb.put("payment_date", rs.getString("payment_date"));
	pb.put("payment_num", rs.getString("payment_num"));
	pb.put("storage_m", rs.getInt("storage_m"));
	pb.put("used_m", rs.getInt("used_m"));
	pb.put("payment_status", rs.getString("payment_status"));
	
	arr.add(pb);
	}


%>
<%=arr%>