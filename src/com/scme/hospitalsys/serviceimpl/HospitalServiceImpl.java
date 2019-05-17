package com.scme.hospitalsys.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.scme.hospitalsys.mapper.HospatilMapper;
import com.scme.hospitalsys.pojo.Hospatil;
import com.scme.hospitalsys.pojo.HospatilVo;
import com.scme.hospitalsys.service.HospitalService;

public class HospitalServiceImpl implements HospitalService {
	@Autowired
	private HospatilMapper hospitalServiceImpl;

	@Override
	public List<HospatilVo> findAllHos() throws Exception {
		return hospitalServiceImpl.findAllHos();
	}

	@Override
	public List<Hospatil> findGrade() throws Exception {
		return hospitalServiceImpl.findGrade();
	}

	@Override
	public List<HospatilVo> findHosByCommonWhere(Hospatil hospatil) throws Exception {
		return hospitalServiceImpl.findHosByCommonWhere(hospatil);
	}

	@Override
	public Integer findHosCount() throws Exception {
		return hospitalServiceImpl.findHosCount();
	}

	@Override
	public List<HospatilVo> findHosInfo() throws Exception {
		return hospitalServiceImpl.findHosInfo();
	}

	@Override
	public Integer findAppCount() throws Exception {
		return hospitalServiceImpl.findAppCount();
	}

	@Override
	public List<HospatilVo> findMedCount() throws Exception {
		return hospitalServiceImpl.findMedCount();
	}
	
}
