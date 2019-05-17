package com.scme.hospitalsys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.scme.hospitalsys.pojo.Dept;
import com.scme.hospitalsys.pojo.Mediciner;
import com.scme.hospitalsys.service.DeptService;
import com.scme.hospitalsys.service.MedicinerService;

@Controller
public class MedicinerController {
	@Autowired
	private DeptService deptService;
	@Autowired
	private MedicinerService medicinerService;

	Map<String, Object> mapMedInfo;

	@RequestMapping("/findMedicinerInfo")
	public String findMedicinerInfo(Model model) throws Exception {
		mapMedInfo = new HashMap<String, Object>();
		List<Dept> listDeptOne = deptService.findDeptByOne();
		mapMedInfo.put("listDeptOne", listDeptOne);
		List<Mediciner> listTitle = medicinerService.findAllMedGroupTitle();
		mapMedInfo.put("listTitle", listTitle);
		List<Mediciner> listMed = medicinerService.findAllMediciner();
		mapMedInfo.put("listMed", listMed);
		Integer count = medicinerService.findMedCount();
		mapMedInfo.put("count", count);

		model.addAttribute("mapMedInfo", mapMedInfo);
		return "doctor_list";
	}

	@RequestMapping("/findMedByWhere")
	public String findMedByWhere(Mediciner mediciner, Model model, String param) throws Exception {
		if (param != null && !param.trim().isEmpty() && param.length() > 0) {
			mediciner.setHospital(param);

			mediciner.setTitle(param);

		}
		List<Mediciner> listMed = medicinerService.findMedByWhere(mediciner);
		mapMedInfo.put("listMed", listMed);
		model.addAttribute("mapMedInfo", mapMedInfo);
		return "doctor_list";
	}

	@RequestMapping("/findSeachMed")
	public String findMedByWhere(String param, Model model) throws Exception {
		List<Mediciner> listMed = null;
		Mediciner medicinerHos = new Mediciner();
		if (param != null && !param.trim().isEmpty() && param.length() > 0) {
			medicinerHos.setHospital(param);
			listMed = medicinerService.findMedByWhere(medicinerHos);
			if (listMed != null && listMed.size() > 0) {
				mapMedInfo.put("listMed", listMed);
				model.addAttribute("mapMedInfo", mapMedInfo);
				return "doctor_list";
			}

			Mediciner medicinerDname = new Mediciner();
			Dept dept = new Dept();
			dept.setD_name(param);
			medicinerDname.setMed_dept(dept);
			listMed = medicinerService.findMedByWhere(medicinerDname);
			if (listMed != null && listMed.size() > 0) {
				mapMedInfo.put("listMed", listMed);
				model.addAttribute("mapMedInfo", mapMedInfo);
				return "doctor_list";
			}

			Mediciner medicinerTit = new Mediciner();
			medicinerTit.setTitle(param);
			listMed = medicinerService.findMedByWhere(medicinerTit);
			if (listMed != null && listMed.size() > 0) {
				mapMedInfo.put("listMed", listMed);
				model.addAttribute("mapMedInfo", mapMedInfo);
				return "doctor_list";
			}

			Mediciner medicinerDept = new Mediciner();
			medicinerDept.setDept(param);
			listMed = medicinerService.findMedByWhere(medicinerDept);
			if (listMed != null && listMed.size() > 0) {
				mapMedInfo.put("listMed", listMed);
				model.addAttribute("mapMedInfo", mapMedInfo);
				return "doctor_list";
			}

			Mediciner medicinerMname = new Mediciner();
			medicinerMname.setM_name(param);
			listMed = medicinerService.findMedByWhere(medicinerMname);
			if (listMed != null && listMed.size() > 0) {
				mapMedInfo.put("listMed", listMed);
				model.addAttribute("mapMedInfo", mapMedInfo);
				return "doctor_list";
			}

		}
		
		return "doctor_list";
	}
}
