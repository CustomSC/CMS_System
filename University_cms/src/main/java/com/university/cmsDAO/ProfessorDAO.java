package com.university.cmsDAO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.university.cmsDTO.ProfessorDTO;

@Repository
public class ProfessorDAO {
	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(String qid, ProfessorDTO professorDTO) {
		myBatis.insert(qid, professorDTO);
	}
	
	public List<ProfessorDTO> select(String qid, ProfessorDTO professorDTO) {
		return myBatis.selectList(qid, professorDTO);
	}
}
