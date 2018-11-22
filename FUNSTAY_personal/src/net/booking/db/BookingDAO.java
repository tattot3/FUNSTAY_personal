package net.booking.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BookingDAO {

	private Connection getConnection() throws Exception{
		Connection con = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/MysqlDB");
		con = ds.getConnection();
		return con;
	}
	
	public void insertPayment(PaymentBean pb){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int payment_num2=0; //주문번호
		Calendar cal=Calendar.getInstance();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		try {
			con=getConnection();
			String sql="select max(payment_num) from payment";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()){
				payment_num2=rs.getInt(1)+1;
			}else{
				payment_num2=1;
			}
			pstmt.close();
			sql="insert into payment"
					+ "(payment_num,member_email,request_msg,payment_status,"
					+ "payment_date,host_email,storage_m,used_m,fees,sum_price)"
					+ "values(?,?,?,?,now(),?,?,?,?,?)";
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, sdf.format(cal.getTime()).toString()+"-"+payment_num2);
			pstmt.setString(2, pb.getMember_email());
			pstmt.setString(3, pb.getRequest_msg());
			pstmt.setString(4, pb.getPayment_status());
			pstmt.setString(5, pb.getHost_email());
			pstmt.setInt(6, pb.getStorage_m());
			pstmt.setInt(7, pb.getUsed_m());
			pstmt.setInt(8, pb.getFees());
			pstmt.setInt(9, pb.getSum_price());
			
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null){try{pstmt.close();}catch(SQLException e){}}
			if(con!=null){try{con.close();}catch(SQLException e){}}			
		}
	}
	
	public void updatemileage(String member_email){
		Connection con = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		try{
			con = getConnection();
			String sql = "update member set mileage=(select sum(storage_m)-sum(used_m) from payment where member_email=? && payment_status='결제완료') where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_email);
			pstmt.setString(2, member_email);
			
			pstmt.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		
		
		
	}
	
}
