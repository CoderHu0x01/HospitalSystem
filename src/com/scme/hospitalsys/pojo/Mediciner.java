package com.scme.hospitalsys.pojo;

public class Mediciner {
	private Integer mid;
	private String m_name; // 医生姓名
	private String title; // 职称
	private String m_spec; // 医生介绍
	private String surgery_weekday; // 出诊时间
	private Integer limit_visits; // 半天预约就诊人数上限
	private String hospital; // 所属医院
	private String dept;// 医院所属二级科室
	
	private Integer num;//总预约数

	private Hospatil med_hospatil;
	private Dept med_dept;
	
	private Integer count;//医生数量

	public Mediciner(Integer mid, String m_name, String title, String m_spec, String surgery_weekday,
			Integer limit_visits, String hospital, String dept, Hospatil med_hospatil, Dept med_dept) {

		this.mid = mid;
		this.m_name = m_name;
		this.title = title;
		this.m_spec = m_spec;
		this.surgery_weekday = surgery_weekday;
		this.limit_visits = limit_visits;
		this.hospital = hospital;
		this.dept = dept;
		this.med_hospatil = med_hospatil;
		this.med_dept = med_dept;
	}

	public Mediciner() {
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getM_spec() {
		return m_spec;
	}

	public void setM_spec(String m_spec) {
		this.m_spec = m_spec;
	}

	public String getSurgery_weekday() {
		return surgery_weekday;
	}

	public void setSurgery_weekday(String surgery_weekday) {
		this.surgery_weekday = surgery_weekday;
	}

	public Integer getLimit_visits() {
		return limit_visits;
	}

	public void setLimit_visits(Integer limit_visits) {
		this.limit_visits = limit_visits;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getHospital() {
		return hospital;
	}

	public void setHospital(String hospital) {
		this.hospital = hospital;
	}

	public Hospatil getMed_hospatil() {
		return med_hospatil;
	}

	public void setMed_hospatil(Hospatil med_hospatil) {
		this.med_hospatil = med_hospatil;
	}

	public Dept getMed_dept() {
		return med_dept;
	}

	public void setMed_dept(Dept med_dept) {
		this.med_dept = med_dept;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

}
