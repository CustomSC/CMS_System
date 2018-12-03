create database unicms default character set utf8;

create table student (
	sNo int auto_increment primary key,
	sNum varchar(10) not null,
	sPw varchar(10) not null,
	sName varchar(10) not null,
	sGender varchar(10) not null,
	sMajor varchar(20) not null,
	sTel varchar(15) not null,
	sEmail varchar(30) not null,
	sAddr varchar(50) not null,
	sStatus varchar(20) not null
)charset=utf8;

create table professor (
	pNo int auto_increment primary key,
	pNum varchar(10) not null,
	pPw varchar(10) not null,
	pName varchar(10) not null,
	pMajor varchar(20) not null,
	pRRN varchar(15) not null,
	pTel varchar(15) not null,
	pEmail varchar(30) not null,
	pAddr varchar(50) not null,
	pStatus varchar(20) not null
)charset=utf8;

create table class (
	cNo int auto_increment primary key,
	className varchar(30) not null,
	cPro varchar(10) not null,
	cTime varchar(20) not null
)charset=utf8;

create table course (
	rNo int auto_increment primary key,
	cNo integer not null,
	sNo integer not null,
	grade varchar(10),
	cPro varchar(10) not null,
	cTime varchar(20) not null
)charset=utf8;