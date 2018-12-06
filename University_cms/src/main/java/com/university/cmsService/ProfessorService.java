package com.university.cmsService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.cmsDAO.ProfessorDAO;
import com.university.cmsDTO.ProfessorDTO;

@Service
public class ProfessorService implements ProfessorIService {
	
	@Autowired
	ProfessorDAO professorDAO;

	@Override
	public void pInsert(String qid, ProfessorDTO professorDTO) {
		professorDAO.insert(qid, professorDTO);
	}

	@Override
	public List<ProfessorDTO> pselect(String qid, ProfessorDTO professorDTO) {
		return professorDAO.select(qid, professorDTO);
	}

}
