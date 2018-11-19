package net.member.db;

public class MemberBean {
	private String email;
	private String pass;
	private String name;
	private String profile_photo;
	private String phone;
	private String birth;
	private int mileage;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getprofile_photo() {
		return profile_photo;
	}
	public void setprofile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	

}
