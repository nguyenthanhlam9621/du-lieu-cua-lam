USE master
GO

IF EXISTS(SELECT *FROM sys.databases WHERE Name LIKE 'lab09')
DROP DATABASE lab09
GO

CREATE DATABASE lab09
GO

USE lab09
GO

CREATE TABLE Class(
ClassCode varchar(10) NOT NULL,
HeadTeacher varchar(30),
Room varchar(30),
TimeSlot char,
CloseDate Datetime
)
GO

ALTER TABLE Class
ADD CONSTRAINT Pk_Class PRIMARY KEY (ClassCode)
GO

CREATE TABLE [Subject](
SubjectCode varchar(10) NOT NULL,
SubjectName varchar(40),
WTest bit,
PTest bit,
WTest_per int,
PTest_per int
)
ALTER TABLE [Subject]
ADD CONSTRAINT Pk_Subject PRIMARY KEY (Subjectcode)
GO
CREATE TABLE Student(
RollNo varchar(10) NOT NULL,
ClassCode varchar(10),
FullName varchar(30),
Male bit,
BirthDate datetime,
[Address] varchar(30),
Province char(2),
Email varchar(30)
)
ALTER TABLE Student
ADD CONSTRAINT Pk_Student PRIMARY KEY (RollNo)
GO
ALTER TABLE Student
ADD CONSTRAINT Fk_Class FOREIGN KEY (ClassCode) REFERENCES Class(ClassCode)
GO

CREATE TABLE Mark(
RollNo varchar(10)NOT NULL,
SubjectCode varchar(10)NOT NULL,
WMark float,
PMark float,
Mark float
)
GO

ALTER TABLE Mark
ADD CONSTRAINT Pk_Mark PRIMARY KEY (RollNo,SubJectCode)
GO

ALTER TABLE Mark
ADD CONSTRAINT Fk_Student FOREIGN KEY (RollNo) REFERENCES Student(RollNo)
GO
ALTER TABLE Mark 
ADD CONSTRAINT Fk_Subject FOREIGN KEY (SubjectCode) REFERENCES Subject(SubjectCode)
GO

--1Chèn ít nhất 5 bản ghi cho từng bảng ở trên.
INSERT INTO Class VALUES
('C1007L','GIAO VIEN 1','Class 1','G','01-01-2010'),
('C1008L','GIAO VIEN 2','Class 2','I','01-01-2011'),
('C1009L','GIAO VIEN 3','Class 3','L','01-01-2012'),
('C1010L','GIAO VIEN 4','Class 4','M','01-01-2013'),
('C1011L','GIAO VIEN 5','Class 5','G','01-01-2014')
GO

INSERT INTO Student VALUES 
('A00264','C1007L','NGUYEN VAN A',1,'01-01-1990','DIA CHI 1','HN','Email1@gmail.com'),
('A00265','C1007L','NGUYEN VAN B',0,'01-01-1991','DIA CHI 2','BN','Email2@gmail.com'),
('A00266','C1007L','NGUYEN VAN C',1,'01-01-1992','DIA CHI 3','HP','Email3@gmail.com'),
('A00267','C1010L','NGUYEN VAN D',0,'01-01-1993','DIA CHI 4','ND','Email4@gmail.com'),
('A00268','C1011L','NGUYEN VAN E',1,'01-01-1994','DIA CHI 5','HN','Email5@gmail.com')
GO

INSERT INTO [Subject] VALUES
('EPC','mon1',1,0,2,2),
('CF','mon2',0,1,2,2),
('Java1','mon3',1,0,2,2),
('EPC1','mon4',0,1,2,2),
('CF1','mon5',1,0,2,2)
GO

INSERT INTO Mark VALUES 
('A00264','EPC',4.5,8,((7.5+8)/2)),
('A00264','CF',4.5,8,((7.5+8)/2)),
('A00265','CF',4,8.5,((4+8.5)/2)),
('A00266','Java1',5.5,6.5,((5.5+6.5)/2)),
('A00266','EPC',5,6.5,((5+6.5)/2)),
('A00267','EPC',1,7,((1+7)/2)),
('A00268','CF',4,8,((4+8)/2))
GO

--2Tạo một khung nhìn chứa danh sách các sinh viên đã có ít nhất 2 bài thi (2 môn học khác nhau).
SELECT *FROM Student WHERE RollNo IN (
	SELECT RollNo FROM Mark GROUP BY RollNo HAVING COUNT(SubjectCode)>=2) 
	GO
--3. Tạo một khung nhìn chứa danh sách tất cả các sinh viên đã bị trượt ít nhất là một môn.
SELECT *FROM Student WHERE RollNo IN (
	SELECT RollNo FROM Mark WHERE (WMark <5 OR PMark <5)
	)
	GO
--4.Tạo một khung nhìn chứa danh sách các sinh viên đang học ở TimeSlot G.
SELECT *FROM Student WHERE ClassCode IN (
	SELECT ClassCode FROM Class WHERE TimeSlot LIKE 'G'
	)
	GO
--5.Tạo một khung nhìn chứa danh sách các giáo viên có ít nhất 3 học sinh thi trượt ở bất cứ môn nào.
SELECT HeadTeacher FROM Class WHERE ClassCode IN(
	SELECT ClassCode FROM Student WHERE RollNo IN (
		SELECT RollNo FROM Mark where (wmark < 5 OR Pmark < 5)) GROUP BY ClassCode HAVING COUNT(RollNo)>=2)
--6Tạo một khung nhìn chứa danh sách các sinh viên thi trượt môn EPC của từng lớp. Khung nhìn này phải chứa các cột: Tên sinh viên, Tên lớp, Tên Giáo viên, Điểm thi môn EPC.
SELECT Student.FullName,Student.ClassCode,Class.HeadTeacher,Mark.Mark 
FROM Student 
JOIN Class ON Student.ClassCode=Class.ClassCode 
JOIN Mark ON Student.RollNo=Mark.RollNo 
JOIN [Subject] ON Mark.SubjectCode=Subject.SubjectCode 
WHERE Mark.Mark<5 AND Subject.SubjectCode LIKE 'EPC'