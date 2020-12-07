USE master
GO
IF EXISTS (SELECT * FROM sys.databases WHERE Name='BookLibrary')
DROP DATABASE BookLibrary
GO

CREATE DATABASE BookLibrary
GO

USE BookLibrary
GO

CREATE TABLE Book(
BookCode int,
BookTitle varchar(100) NOT NULL,
Author varchar(50) NOT NULL,
Edition int,
BookPrice money,
Copies int,
CONSTRAINT bk PRIMARY KEY (BookCode)
)
GO

CREATE TABLE Member(
MemberCode int,
Name varchar(50) NOT NULL,
Address varchar(50) NOT NULL,
PhoneNumber int,
CONSTRAINT bk2 PRIMARY KEY (MemberCode)
)
GO

CREATE TABLE IssueDetails(
BookCode int,
MemberCode int,
IssueDate datetime,
ReturnDate datetime,
CONSTRAINT bbk FOREIGN KEY (BookCode) REFERENCES Book(BookCode)
)
GO

ALTER TABLE IssueDetails
DROP CONSTRAINT bbk
GO

ALTER TABLE Member
DROP CONSTRAINT bk2
GO

ALTER TABLE Book
Drop CONSTRAINT bk
GO

ALTER TABLE Member
ADD CONSTRAINT bk2 PRIMARY KEY (MemberCode)
GO

ALTER TABLE Book
ADD CONSTRAINT bk PRIMARY KEY (BookCode)
GO

ALTER TABLE IssueDetails
ADD CONSTRAINT bbk FOREIGN KEY (MemberCode) REFERENCES book(BookCode)
GO

ALTER TABLE Book
ADD CONSTRAINT gb CHECK (Bookprice>0 AND bookprice<200)
GO

ALTER TABLE Member
ADD CONSTRAINT duynhatso UNIQUE (Phonenumber)
GO 

ALTER TABLE IssueDetails
ALTER COLUMN  BookCode INT NOT NULL
GO

ALTER TABLE IssueDetails
ALTER COLUMN MemberCode INT NOT NULL
GO

ALTER TABLE IssueDetails
ADD CONSTRAINT kc PRIMARY KEY (BookCode,MemberCode)
GO

INSERT INTO Book VALUES (1,'BookTitle','Author',2,50, 3)
INSERT INTO Member VALUES(1,'Name','Address',0123456789)
INSERT INTO IssueDetails VALUES(1,1,'1-1-2000','1-1-2020')

SELECT * FROM book
SELECT * FROM Member
SELECT *FROM IssueDetails