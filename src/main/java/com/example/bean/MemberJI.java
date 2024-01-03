package com.example.bean;

public class MemberJI {
	
	private String id;
	private String pw;
	private String address;
	private String name;
	private String kor;
	private String math;
	
	public MemberJI() {
	
	}
	public MemberJI(String id, String pw, String address, String name, String kor, String math) {
		super();
		this.id = id;
		this.pw = pw;
		this.address = address;
		this.name = name;
		this.kor = kor;
		this.math = math;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKor() {
		return kor;
	}
	public void setKor(String kor) {
		this.kor = kor;
	}
	public String getMath() {
		return math;
	}
	public void setMath(String math) {
		this.math = math;
	}

	
}
