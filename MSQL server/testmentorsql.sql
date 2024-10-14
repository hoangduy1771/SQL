
create database StudentManagement;


create table SUBJECT (
	SubjectID int primary key,
	SubjectName varchar(50),
	SubjectHours int
);

create table COURSE (
	CourseID int primary key,
	CourseName varchar(200)
);

create table CLASS (
	ClassID int primary key,
	ClassName varchar(50),
	Email varchar(50),
	CourseID int,
	foreign key (CourseID) references COURSE(CourseID)
);

create table STUDENT(
	StudentID int primary key,
	StudentName varchar(50),
	Email varchar(50),
	Gender nchar(10),
	Birth datetime,
	ClassID int,
	foreign key (ClassID) references CLASS(ClassID)
); 

create table GRADES(
	StudentID int,
	foreign key (StudentID) references STUDENT(StudentID),
	SubjectID int,
	foreign key(SubjectID) references SUBJECT(SubjectID),
	TestAttempt int,
	Grade int,
	primary key(StudentID, SubjectID)
);

create table TEACHER (
	TeacherID int primary key,
	TeacherName varchar(50),
	Field varchar(50),
	CourseID int,
	foreign key (CourseID) references COURSE(CourseID)

);

-- adding data to tables
insert into SUBJECT (SubjectID, SubjectName, SubjectHours)
values (1, 'Advanced Mathematics', 60),
	   (2, 'English', 120),
	   (3, 'Programming With C#', 45);

insert into COURSE (CourseID, CourseName)
values (1, 'Public Health'),
	   (2, 'Economics'),
	   (3, 'Information Technology');

insert into CLASS (ClassID, ClassName, Email, CourseID)
values (1, 'Class A', 'classa@gmail.com', 1),
	   (2, 'Class B', 'classb@gmail.com', 1),
	   (3, 'Class C', 'classc@gmail.com', 2);

insert into STUDENT (StudentID, StudentName, Email, Gender, Birth, ClassID)
values (1, 'SpongeBob SquarePants', 'SpongeBob@gmail.com', 'Male', '1999-01-01', 1),
	   (2, 'Patrick Star', 'Patrick@gmail.com', 'Male', '2000-02-02', 1),
	   (3, 'Sandy Cheeks', 'Sandy@gmail.com', 'Female', '2001-03-03', 2);

insert into GRADES (StudentID, SubjectID, TestAttempt, Grade)
values (1, 1, 1, 8),
	   (1, 2, 2, 7),
	   (2, 2, 1, 9),
	   (2, 3, 1, 6),
	   (3, 1, 1, 7);

insert into TEACHER(TeacherID, TeacherName, Field, CourseID)
values (1, 'Mary Jo Puff', 'Health Science', 1),
	   (2, 'Eugene Harold Krabs', 'Finance', 2),
	   (3, 'Ernie', 'Computer Science', 3);


select * from TEACHER;
drop table GRADES;
-- query data
select top 2 StudentName, Email from STUDENT
ORDER BY StudentID ASC;

select * from GRADES;
select * from STUDENT;
select StudentName, grade, ClassName from GRADES 
join STUDENT ON STUDENT.StudentID = GRADES.StudentID
join CLASS ON CLASS.ClassID = STUDENT.ClassID
where STUDENT.StudentName like '%SpongeBob%';





-- TROUBLESHOOTING
-- creating diagram problem (PC change name)
--https://stackoverflow.com/questions/59512297/how-can-i-resolve-this-error-in-microsoft-sql-server-management-studio
create database StudentManagement;

USE StudentManagement
GO
EXEC sp_changedbowner 'sa'



-- delete db currently in use
 use master
 alter database StudentManagement set single_user with rollback immediate

 drop database StudentManagement;












