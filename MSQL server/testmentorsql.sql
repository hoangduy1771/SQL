
create database StudentManagement;


create table subject (
	SubjectId int primary key,
	SubjectName varchar(50),
	Hours int
);

create table course (
	CourseId int primary key,
	CourseName varchar(200)
);

create table class (
	ClassId int primary key,
	name varchar(50),
	email varchar(50),
	CourseId int,
	foreign key (CourseId) references COURSE(CourseId)
);

create table student(
	
); 


