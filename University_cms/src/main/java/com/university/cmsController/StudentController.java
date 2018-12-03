package com.university.cmsController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.cmsDTO.StudentDTO;
import com.university.cmsService.StudentIService;

@Controller
public class StudentController {
	@Autowired
	StudentIService studentIService;
	
	@RequestMapping("insert")
	public String insert(StudentDTO studentDTO, Model model) {
		String qid = "studentSQL.insert";
		studentDTO.setsStatus("재학");
		studentIService.sInsert(qid, studentDTO);
		return "result";
	}
}
