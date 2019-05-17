package com.scme.hospitalsys.pojo;

public class User {
	private Integer uid;
	private String username;
	private String pwd;
	private String uname; // 姓名
	private String gender;
	private String mobile;

	public User() {
	}

	public User(Integer uid, String username, String pwd, String uname, String gender, String mobile) {
		this.uid = uid;
		this.username = username;
		this.pwd = pwd;
		this.uname = uname;
		this.gender = gender;
		this.mobile = mobile;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
}
