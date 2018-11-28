package com.university.cmsDTO;

public class ClassDTO {
	//개설강좌
	private int cNo; //개설강좌 고유번호
	private String className; //개설강좌명
	private String cPro; //담당교수
	private String time; //시간
	
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
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
