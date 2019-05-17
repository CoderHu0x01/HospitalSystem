package com.scme.hospitalsys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scme.hospitalsys.controller.ajax.AjaxMsg;
import com.scme.hospitalsys.pojo.Dept;
import com.scme.hospitalsys.pojo.Hospatil;
import com.scme.hospitalsys.pojo.HospatilVo;
import com.scme.hospitalsys.pojo.Mediciner;
import com.scme.hospitalsys.service.DeptService;
import com.scme.hospitalsys.service.HospitalService;
import com.scme.hospitalsys.service.MedicinerService;

@Controller
public class HospitalController {
	@Autowired
	private HospitalService hospitalService;
	
	@Autowired
	private DeptService deptService;
	
	@Autowired
	private MedicinerService medicinerService;
	
	@RequestMapping("/index")
	public String toIndex() {
		return "index";
	}
	
	/**
	 * 加载医院信息
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/hospitalList")
	public @ResponseBody AjaxMsg findAllHospital(String grade) throws Exception {
		List<Hospatil> listGrade = hospitalService.findGrade();
		List<HospatilVo> listHos = hospitalService.findAllHos();
		Integer countHos = hospitalService.findHosCount();
		return AjaxMsg.success().addData("listGrade", listGrade).addData("listHos", listHos).addData("countHos", countHos);
	}
	
	/**
	 * 
	 * 首页信息
	 * @param grade
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/indexHospital")
	public String loadHspitalInfo(String grade,Model model) throws Exception {
		List<HospatilVo> listHos = hospitalService.findHosInfo();
		model.addAttribute("listHos", listHos);
		List<Dept> listDept = deptService.findAllDept();
		model.addAttribute("listDept", listDept);
		List<Mediciner> listMed = medicinerService.findAllMediciner();
		model.addAttribute("listMed", listMed);
		
		HospatilVo hospatilVo=new HospatilVo();
		Integer appCount = hospitalService.findAppCount();
		hospatilVo.setAppCount(appCount);
		List<HospatilVo> medCount = hospitalService.findMedCount();
		hospatilVo.setMedCount(medCount.size());
		Integer hosCount = hospitalService.findHosCount();
		hospatilVo.setHosCount(hosCount);
		model.addAttribute("hospatilVo", hospatilVo);
		return "index";
	}
	
	
	/**
	 * 按照医院级别查找医院
	 * @param grade
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findHosByGrade")
	public @ResponseBody AjaxMsg findHosByGrade(Hospatil hospatil) throws Exception {
		List<HospatilVo> listHos = hospitalService.findHosByCommonWhere(hospatil);
		return AjaxMsg.success().addData("listHos", listHos);
	}
	
	/**
	 * 按医院名称查找医院
	 * @param hospatil
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findHosByHname")
	public @ResponseBody AjaxMsg findHosByHname(Hospatil hospatil) throws Exception {
		List<HospatilVo> listHos = hospitalService.findHosByCommonWhere(hospatil);
		return AjaxMsg.success().addData("listHos", listHos);
	}

	
}
