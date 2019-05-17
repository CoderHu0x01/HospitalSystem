package com.scme.hospitalsys.service;

import java.util.List;

import com.scme.hospitalsys.pojo.Dept;
import com.scme.hospitalsys.pojo.Hospatil;
import com.scme.hospitalsys.pojo.HospatilVo;

public interface HospitalService {
	List<HospatilVo> findAllHos() throws Exception;

	List<Hospatil> findGrade() throws Exception;

	/* List<Hospatil> findHosByGrade(String grade) throws Exception; */

	Integer findHosCount() throws Exception;

	List<HospatilVo> findHosByCommonWhere(Hospatil hospatil) throws Exception;

	List<HospatilVo> findHosInfo() throws Exception;

	Integer findAppCount() throws Exception;

	List<HospatilVo> findMedCount() throws Exception;
}
