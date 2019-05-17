package com.scme.hospitalsys.service;

import java.util.List;

import com.scme.hospitalsys.pojo.Mediciner;

public interface MedicinerService {
	List<Mediciner> findAllMediciner() throws Exception;
	
	List<Mediciner> findAllMed() throws Exception;
	
	List<Mediciner> findAllMedGroupTitle() throws Exception;
	
	Integer findMedCount() throws Exception;
	
	List<Mediciner> findMedByWhere(Mediciner mediciner) throws Exception;
}	
