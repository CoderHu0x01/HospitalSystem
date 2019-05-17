package com.scme.hospitalsys.pojo;

public class Hospatil {
	private Integer hid;
	private String h_name; // 医院名
	private String address;
	private String grade; // 医院级别

	public Hospatil(Integer hid, String h_name, String address, String grade) {
		this.hid = hid;
		this.h_name = h_name;
		this.address = address;
		this.grade = grade;
	}

	public Hospatil() {
	}

	public Integer getHid() {
		return hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

}
