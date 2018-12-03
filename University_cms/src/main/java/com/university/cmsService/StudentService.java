package com.university.cmsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.university.cmsDAO.StudentDAO;
import com.university.cmsDTO.StudentDTO;

@Service
public class StudentService implements StudentIService {

	@Autowired
	StudentDAO studentDAO;
	
	@Override
	public void sInsert(String qid, StudentDTO studentDTO) {
		studentDAO.insert(qid, studentDTO);
	}

}
