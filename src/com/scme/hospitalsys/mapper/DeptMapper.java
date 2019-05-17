package com.scme.hospitalsys.mapper;

import java.util.List;

import com.scme.hospitalsys.pojo.Dept;


public interface DeptMapper {
	public void addDept(Dept dept) throws Exception;

	public void addPartnetDept(Dept dept) throws Exception;

	public Dept findDeptByDname(String d_name) throws Exception;
	
	public List<Dept> findDeptByOne() throws Exception;
		
	public List<Dept> findAllDept() throws Exception;
	
	
}
