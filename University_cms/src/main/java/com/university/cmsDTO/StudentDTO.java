package com.university.cmsDTO;

public class StudentDTO {
	//학생
	private int sNo; //학생 고유번호
	private String sNum; //학번
	private String sPw; //학생 비밀번호
	private String sName; //학생 이름
	private String sMajor; //학생 전공
	private String sRRN; //학생 주민번호
	private String sTel; //학생 전화번호
	private String sEmail; //학생 이메일
	private String sAddr; //학생 주소
	private String sStatus; //학생 상태
	
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getsNum() {
		return sNum;
	}
	public void setsNum(String sNum) {
		this.sNum = sNum;
	}
	public String getsPw() {
		return sPw;
	}
	public void setsPw(String sPw) {
		this.sPw = sPw;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsRRN() {
		return sRRN;
	}
	public void setsRRN(String sRRN) {
		this.sRRN = sRRN;
	}
	public String getsTel() {
		return sTel;
	}
	public void setsTel(String sTel) {
		this.sTel = sTel;
	}
	public String getsEmail() {
		return sEmail;
	}
	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}
	public String getsAddr() {
		return sAddr;
	}
	public void setsAddr(String sAddr) {
		this.sAddr = sAddr;
	}
	public String getsStatus() {
		return sStatus;
	}
	public void setsStatus(String sStatus) {
		this.sStatus = sStatus;
	}
	public String getsMajor() {
		return sMajor;
	}
	public void setsMajor(String sMajor) {
		this.sMajor = sMajor;
	}
	
}
