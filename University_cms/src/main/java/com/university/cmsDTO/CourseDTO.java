package com.university.cmsDTO;

public class CourseDTO {
	//수강
	private int rNo; //수강 고유번호
	private String cNo; //수강 과목명
	private String sNo; //수강 학생
	private String grade; //성적
	private String cPro; //담당교수
	private String time; //시간
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getsNo() {
		return sNo;
	}
	public void setsNo(String sNo) {
		this.sNo = sNo;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getcPro() {
		return cPro;
	}
	public void setcPro(String cPro) {
		this.cPro = cPro;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
}
