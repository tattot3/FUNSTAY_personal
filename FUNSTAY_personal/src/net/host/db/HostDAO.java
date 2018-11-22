package net.host.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.booking.db.PaymentBean;

public class HostDAO {

	private Connection getConnection() throws Exception {
		Connection con = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysqlDB");
		con = ds.getConnection();
		
		return con;
	}
	
	// 호스트 여부 체크
	public int hostCehck(String host_email){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		try{
			con = getConnection();
			String sql = "select * from host where host_email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, host_email);
			
			rs = pstmt.executeQuery();
			if(rs.next()){
				result=1;
			}else{result=0;}
		}catch(Exception e){e.printStackTrace();
		}finally{
			try{
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(con!=null){con.close();}
			}catch(SQLException e){}
		}
		return result;		
	}
	
	// 호스트 cash 내역리스 select
	public List<PaymentBean> getCashList(String host_email){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<PaymentBean> c_list = new ArrayList<>();
		try{
			con=getConnection();
			String sql = "select payment_date, payment_num, payment_status, (sum_price-fees) as cash from payment where host_email=? order by payment_date desc, payment_num desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, host_email);
			rs = pstmt.executeQuery();
			while(rs.next()){
				PaymentBean pb = new PaymentBean();
				pb.setPayment_date(rs.getDate("payment_date"));
				pb.setPayment_num(rs.getString("payment_num"));
				pb.setPayment_status(rs.getString("payment_status"));
				pb.setSum_price(rs.getInt("cash"));
				
				c_list.add(pb);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return c_list;
	}
	
}
