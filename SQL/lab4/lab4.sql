USE master
GO


IF Exists(SELECT * FROM sys.databases WHERE NAME LIKE 'lap4')
DROP DATABASE lap4
GO

CREATE DATABASE lap4
GO

USE lap4
GO

CREATE TABLE Students(
STT int IDENTITY,
MaSv int PRIMARY KEY,
Ten varchar(20),
NgaySinh datetime,
)
GO

CREATE TABLE Class(
MaSv int,
Phong int,
Thoigian datetime,

)
GO

CREATE TABLE StudentsClass(
MaSv int,
Thoigian datetime,
Lop varchar(10)
)
GO

 ALTER TABLE Class
 ADD CONSTRAINT ma FOREIGN KEY (MaSv) REFERENCES Students(MaSv)
 GO

 ALTER TABLE StudentsClass
 ADD CONSTRAINT mastc FOREIGN KEY(MaSv) REFERENCES Students(MaSv)
 GO


 --ALTER TABLE StudentsClass
 --ADD CONSTRAINT gio FOREIGN KEY (Thoigian) REFERENCES Class(Thoigian)
 --GO

 INSERT INTO Students VALUES(1000,'N VAN A','01-22-1999')
 INSERT INTO Students VALUES(1001,'N VAN B','01-22-1998')
 INSERT INTO Students VALUES(1002,'N VAN C','01-22-1997')
 INSERT INTO Students VALUES(1003,'N VAN D','01-22-1996')
 INSERT INTO Students VALUES(1004,'N VAN E','01-22-1995')
 GO

 INSERT INTO Class VALUES(1000,201,'13:00')
 INSERT INTO Class VALUES(1001,202,'17:00')
 INSERT INTO Class VALUES(1002,203,'06:00')
 INSERT INTO Class VALUES(1003,201,'13:00')
 INSERT INTO Class VALUES(1004,202,'17:00')

 GO

 INSERT INTO StudentsClass VALUES(1000,'13:00','chieu')
 INSERT INTO StudentsClass VALUES(1001,'17:00','toi')
 INSERT INTO StudentsClass VALUES(1002,'06:00','sang')
 INSERT INTO StudentsClass VALUES(1003,'13:00','chieu')
 INSERT INTO StudentsClass VALUES(1004,'17:00','toi')
 GO
 UPDATE Students SET Ten='N VAN DOI' WHERE MaSv='1003'
 UPDATE Class SET Phong='0' WHERE Masv='1003'
 UPDATE StudentsClass SET Lop='CA NGAY' WHERE MaSv='1003'

 DELETE from Class where MaSv='1003'
 DELETE from StudentsClass WHERE MaSV='1003'
 DELETE from Students WHERE MaSV='1003'

 SELECT * FROM Students
 SELECT * FROM Class
 SELECT * FROM StudentsClass

 
