package com.scme.hospitalsys.pojo;

public class HospatilVo extends Hospatil {
	private Mediciner mediciner;
	private Integer count;// 统计当前医院的医生数量
	private Integer visitCount;// 预约总数
	private Integer hosCount;//医院数量
	private Integer medCount;//可预约医生数量
	private Integer appCount;//累计预约数量
	

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Mediciner getMediciner() {
		return mediciner;
	}

	public void setMediciner(Mediciner mediciner) {
		this.mediciner = mediciner;
	}

	public Integer getVisitCount() {
		return visitCount;
	}

	public void setVisitCount(Integer visitCount) {
		this.visitCount = visitCount;
	}

	public Integer getHosCount() {
		return hosCount;
	}

	public void setHosCount(Integer hosCount) {
		this.hosCount = hosCount;
	}

	public Integer getMedCount() {
		return medCount;
	}

	public void setMedCount(Integer medCount) {
		this.medCount = medCount;
	}

	public Integer getAppCount() {
		return appCount;
	}

	public void setAppCount(Integer appCount) {
		this.appCount = appCount;
	}

}
