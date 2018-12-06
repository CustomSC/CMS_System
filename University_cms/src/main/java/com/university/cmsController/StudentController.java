package com.university.cmsController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	String qid;
	
	@RequestMapping("insert/student")
	public String insert(StudentDTO studentDTO, Model model, HttpServletRequest request) {
		qid = "studentSQL.insert";
		studentDTO.setsStatus("재학"); //기본 default값으로 설정.
		studentDTO.setsMajor(request.getParameter("major1") + " " + request.getParameter("major2"));
		studentIService.sInsert(qid, studentDTO);
		return "result";
	}
	
	@RequestMapping("select")
	public String select(String qid, Model model, StudentDTO studentDTO) {
		qid = "studentSQL.select";
		List<StudentDTO> list = studentIService.select(qid, studentDTO);
		model.addAttribute("list", list);
		return "view";
	}
}
