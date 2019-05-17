package com.scme.hospitalsys.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.scme.hospitalsys.mapper.DeptMapper;
import com.scme.hospitalsys.pojo.Dept;
import com.scme.hospitalsys.service.DeptService;

public class DeptServiceImpl implements DeptService {
	@Autowired 
	private DeptMapper deptMapper;
	
	@Override
	public List<Dept> findDeptByOne() throws Exception {
		return deptMapper.findDeptByOne();
	}

	@Override
	public List<Dept> findAllDept() throws Exception {
		return deptMapper.findAllDept();
	}

}
