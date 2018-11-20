package net.member.db;

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


public class MemberDAO {
	private Connection getConnection() throws Exception{
		
		Connection con = null;
		// Context 객체 생성
		Context init = new InitialContext();
		// DateSource = 디비연동 이름 불러오기
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/MysqlDB");
		// con = DataSource
		con = ds.getConnection();

		return con;
	}
	
	//회원가입 insertMember()함수
	public void insertMember(MemberBean mb){
		Connection con = null;
		PreparedStatement pstmt = null;
		try{
			con = getConnection();
			String sql = "insert into member(email,pass,name,profile_photo,phone,birth,mileage) values(?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,mb.getEmail());
			pstmt.setString(2,mb.getPass());
			pstmt.setString(3,mb.getName());
			pstmt.setString(4,"");
			pstmt.setString(5,mb.getPhone());
			pstmt.setString(6,mb.getBirth());
			pstmt.setInt(7,0);
			
			pstmt.executeUpdate();
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return;
	}//insert함수
	
	//getMember() 함수
	public MemberBean getMember(String email){
		MemberBean mb = new MemberBean();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			con = getConnection();
			String sql="select * from member where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				mb.setEmail(rs.getString("email"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setprofile_photo(rs.getString("profile_photo"));
				mb.setPhone(rs.getString("phone"));
				mb.setBirth(rs.getString("birth"));
				mb.setMileage(rs.getInt("mileage"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
			}
		return mb;
		}//getMember함수
	
	//email중복 check()함수
	public int emailCheck(String email){
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		int check = -1;
		try{
			con = getConnection();
			String sql = "select id from member where email = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()){
				check=1;
			}else {check=0;}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
				if(rs!=null)try{rs.close();}catch (SQLException e){}
				if(pstmt!=null)try{pstmt.close();}catch (SQLException e) {}
				if(con!=null)try{con.close();}catch (SQLException e) {}	
		}
		return check;
		}//email중복 check()함수
	
	//이메일(아이디)비밀번호 체크 함수
	public int userCheck(String email,String pass){
		int check=-1;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			
			 con=getConnection();
			
			 String sql="select pass from member where email=?";
			 pstmt=con.prepareStatement(sql);
			 pstmt.setString(1, email);;
			 
			 rs=pstmt.executeQuery();
			 
			/* System.out.println(email);
			 System.out.println(pass);*/

			 if(rs.next()){
			 	if(rs.getString("pass").equals(pass)){
			 		check=1;
			 	}else{
			 		check=0;
			 	}
			 }else{
			 		check=-1;
			 }
		}catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return check;
	}//이메일(아이디)비밀번호 체크 함수
	
	//updateMember()함수
	public int updateMember(MemberBean mb) {
		int check = -1;
		PreparedStatement pstmt=null;
		Connection con =null;
		ResultSet rs=null;
		try {
			con = getConnection();
			
			String sql = "select pass from member where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mb.getEmail());
			rs = pstmt.executeQuery();

			if(rs.next()){
				if(!mb.getPass().equals("")){
					if(mb.getPass().equals(rs.getString("pass"))){
						sql = "update member set name=?, profile_photo=?, phone=?, birth=?, mileage=? where email=?";
						pstmt = con.prepareStatement(sql);
						pstmt.setString(1, mb.getName());
						pstmt.setString(2, mb.getprofile_photo());
						pstmt.setString(3,mb.getPhone());
						pstmt.setString(4, mb.getBirth());
						pstmt.setInt(5,mb.getMileage());
						pstmt.setString(6,mb.getEmail());
						
						pstmt.executeUpdate();
						
						check =1;
					}
				}else{
					check =0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();	
				if(rs!=null)rs.close();
			}catch (SQLException e) {}
		}
		return check;
	}//updateMember()함수
	
	//deleteMember()함수
	public void deleteMember(MemberBean mb) {
		Connection con =null;
		PreparedStatement pstmt =null;
		try {
			con = getConnection();

			String sql = "delete from member where email = ? and pass = ?";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, mb.getEmail());
			pstmt.setString(2, mb.getPass());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			}catch (SQLException e) {}
		}
	}//deleteMember()함수
	
//회원정보 getMemberList()함수
	public List<MemberBean> getMemberList(){
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MemberBean> list=new ArrayList<>();
		try{
			con=getConnection();
			String sql="select * from member";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				MemberBean mb=new MemberBean();
				mb.setEmail(rs.getString("email"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setprofile_photo(rs.getString("profile_photo"));
				mb.setPhone(rs.getString("phone"));
				mb.setBirth(rs.getString("birth"));
				mb.setMileage(rs.getInt("mileage"));
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return list;
	}
	
	//마일리지 
	public List<PaymentBean> getMileageList(String email){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<PaymentBean> m_list = new ArrayList<>();
		try{
			con=getConnection();
			String sql = "select payment_date, payment_num, storage_m, used_m, payment_status from payment where member_email=? order by payment_date desc;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			System.out.println("pstmt");
			rs = pstmt.executeQuery();
			while(rs.next()){
				PaymentBean pb = new PaymentBean();
				pb.setPayment_date(rs.getDate("payment_date"));
				pb.setPayment_num(rs.getString("payment_num"));
				pb.setStorage_m(rs.getInt("storage_m"));
				pb.setUsed_m(rs.getInt("used_m"));
				pb.setPayment_status(rs.getString("payment_status"));
				
				m_list.add(pb);
				System.out.println("pb저장");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return m_list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}//클래스
