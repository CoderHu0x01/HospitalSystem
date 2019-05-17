package com.scme.hospitalsys.mapper;

import java.util.List;

import com.scme.hospitalsys.pojo.Mediciner;

public interface MedicinerMapper {
	 void addMediciner(Mediciner mediciner) throws Exception;
	
	 Integer findAppoCount(String m_name) throws Exception;
	
	 List<Mediciner> findAllAppo() throws Exception;
	
	 List<Mediciner> findAllMed() throws Exception;
	
	List<Mediciner> findAllMediciner() throws Exception;
	
	List<Mediciner> findAllMedGroupTitle() throws Exception;
	
	Integer findMedCount() throws Exception;
	
	List<Mediciner> findMedByWhere(Mediciner mediciner) throws Exception;
}
