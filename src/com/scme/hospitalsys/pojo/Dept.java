package com.scme.hospitalsys.pojo;

import java.util.List;

public class Dept {
	private Integer did;
	private String d_name; // 科室名
	private String d_spec; // 科室介绍
	private Integer p_did; // 上级科室id
	private Dept parentDept;// 上级科室关联自身
	
	private List<Dept> listParDept;

	public Dept(Integer did, String d_name, String d_spec, Integer p_did, Dept parentDept) {
		this.did = did;
		this.d_name = d_name;
		this.d_spec = d_spec;
		this.p_did = p_did;
		this.parentDept = parentDept;
	}

	public Dept() {
	}

	public Integer getDid() {
		return did;
	}

	public void setDid(Integer did) {
		this.did = did;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getD_spec() {
		return d_spec;
	}

	public void setD_spec(String d_spec) {
		this.d_spec = d_spec;
	}

	public Integer getP_did() {
		return p_did;
	}

	public void setP_did(Integer p_did) {
		this.p_did = p_did;
	}

	public Dept getParentDept() {
		return parentDept;
	}

	public void setParentDept(Dept parentDept) {
		this.parentDept = parentDept;
	}

	public List<Dept> getListParDept() {
		return listParDept;
	}

	public void setListParDept(List<Dept> listParDept) {
		this.listParDept = listParDept;
	}
}
