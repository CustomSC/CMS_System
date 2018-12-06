package com.university.cmsService;

import java.util.List;

import com.university.cmsDTO.ProfessorDTO;

public interface ProfessorIService {

	void pInsert(String qid, ProfessorDTO professordto);
	
	List<ProfessorDTO> pselect(String qid, ProfessorDTO professordto);
}
