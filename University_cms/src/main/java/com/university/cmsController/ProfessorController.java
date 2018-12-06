package com.university.cmsController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.university.cmsDTO.ProfessorDTO;
import com.university.cmsDTO.StudentDTO;
import com.university.cmsService.ProfessorIService;
import com.university.cmsService.StudentIService;

@Controller
public class ProfessorController {
	@Autowired
	ProfessorIService professorIService;
	
	String qid;
	
	@RequestMapping("insert/professor")
	public String insert(ProfessorDTO professorDTO, Model model, HttpServletRequest request) {
		qid = "professorSQL.insert";
		professorDTO.setpStatus("재직"); //기본 default값으로 설정.
		professorDTO.setpMajor(request.getParameter("major1") + " " + request.getParameter("major2"));
		professorIService.pInsert(qid, professorDTO);
		return "result";
	}
	
	@RequestMapping("select/professor")
	public String select(String qid, Model model, ProfessorDTO professorDTO) {
		qid = "professorSQL.select";
		List<ProfessorDTO> list = professorIService.pselect(qid, professorDTO);
		model.addAttribute("list", list);
		return "view2";
	}
}
