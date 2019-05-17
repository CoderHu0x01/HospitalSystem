package com.scme.hospitalsys.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scme.hospitalsys.controller.ajax.AjaxMsg;
import com.scme.hospitalsys.service.AppointmentService;

@Controller
public class AppointmentController {
	@Autowired
	private AppointmentService appointmentService;
	
	@RequestMapping("/appointSeq")
	public @ResponseBody AjaxMsg appointSeq(Integer u_id,Integer patient_id,Integer m_id) throws Exception {
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("u_id", u_id);
		map.put("patient_id", patient_id);
		map.put("m_id", m_id);
		map.put("visit_time", new SimpleDateFormat("yyyy-MM-dd HH:mm:dd").format(new Date()));
		//map.put("available", "@a");
		appointmentService.saveAppointment(map);
		
		Integer available= (Integer) map.get("available");
		if(available==1) {
			return AjaxMsg.success();
		}else if(available==0) {
			return AjaxMsg.fail();
		}
		return AjaxMsg.fail();
	}
}
