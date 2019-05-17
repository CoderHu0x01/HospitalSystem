package com.scme.hospitalsys.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.scme.hospitalsys.mapper.MedicinerMapper;
import com.scme.hospitalsys.pojo.Mediciner;
import com.scme.hospitalsys.service.MedicinerService;

public class MedicinerServiceImpl implements MedicinerService {
	@Autowired
	MedicinerMapper medicinerMapper;

	@Override
	public List<Mediciner> findAllMed() throws Exception {
		return medicinerMapper.findAllMed();
	}

	@Override
	public List<Mediciner> findAllMediciner() throws Exception {
		return medicinerMapper.findAllMediciner();
	}

	@Override
	public List<Mediciner> findAllMedGroupTitle() throws Exception {
		return medicinerMapper.findAllMedGroupTitle();
	}

	@Override
	public Integer findMedCount() throws Exception {
		return medicinerMapper.findMedCount();
	}

	@Override
	public List<Mediciner> findMedByWhere(Mediciner mediciner) throws Exception {
		return medicinerMapper.findMedByWhere(mediciner);
	}
}
