package com.scme.hospitalsys.service;

import java.util.List;

import com.scme.hospitalsys.pojo.Dept;

public interface DeptService {
	List<Dept> findDeptByOne() throws Exception;
	
	List<Dept> findAllDept() throws Exception;
}
