package com.university.cmsDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.university.cmsDTO.StudentDTO;

@Repository
public class StudentDAO {
	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(String qid, StudentDTO studentDTO) {
		myBatis.insert(qid, studentDTO);
	}
}
