package com.university.cmsService;

import java.util.List;

import com.university.cmsDTO.StudentDTO;

public interface StudentIService {

	void sInsert(String qid, StudentDTO studentDTO);
	
	List<StudentDTO> select(String qid, StudentDTO studentDTO);
}
