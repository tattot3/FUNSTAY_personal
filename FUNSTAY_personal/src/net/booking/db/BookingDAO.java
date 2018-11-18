package net.booking.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	
	public List getMyMileage(String member_email){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List A=null;
		try{
			con = getConnection();
			String sql = "select mileage from member where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_email);
			pstmt.executeQuery();
			rs.next();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
		
		
		
		return A;
	}
	
}
