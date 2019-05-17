package com.scme.hospitalsys.serviceimpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.scme.hospitalsys.mapper.AppointmentMapper;
import com.scme.hospitalsys.service.AppointmentService;

public class AppointmentServiceImpl implements AppointmentService {
	@Autowired
	private AppointmentMapper appointmentMapper;

	@Override
	public void saveAppointment(Map<String, Object> map) throws Exception {
		appointmentMapper.saveAppointment(map);
	}
}
