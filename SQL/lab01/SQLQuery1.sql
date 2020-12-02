USE AdventureWorks2019
SELECT *FROM HumanResources.Employee
GO
--khai bao bien cuc bo deptID kieu int
Declare @deptID INT
--Dung set hoac select de gan gia tri cho bien
select @deptID = 1
select Name,GroupName From HumanResources.Department Where DepartmentID=@deptID
Go
select @@LANGUAGE --tra lai thong tin bien toan cuc @@LANGUAGE
select @@VERSION-- tra lai thong tin toan cuc @@VERSION
--cac ham trong ngon ngu Transact-SQL
Select SUM(StandardCost)FROM Production.ProductCostHistory--lay ra StandaeCost trong bang productCoststory
select AVG(StandardCost)From Production.ProductCostHistory
select COUNT(*) from Production.ProductPhoto
select GETDATE()
Select DATEPART(hh,GEtDATE())
select CONVERT(varchar(50),GETDATE(),103)
select DB_ID('AdventureWorks2019')
Create Database EXAMPLE
USE example
Create table contacts
(MailID Varchar(20),
Name NTEXT,
telephoneNumber INT)
ALTER TABLE Contacts ADD Address NVARCHAR(50)

INSERT INTO contacts values('abc@yahoo.com','Nguyen Van A',9893245,'Ha Noi')
INSERT INTO contacts values('ngthib@gmail.com','Nguyen Thi B',8759385,'Ha Noi')
INSERT INTO contacts values('tranc@yahoo.com','Tran van c',7236258,'Ha Noi')
INSERT INTO contacts values('trinhvan@gmail.com','Trinh van D',5463245,'Ha Noi')
SeLect *From contacts
DELETE From contacts Where MailID='tranc@yahoo.com'
Update contacts SET Name=N'Trinh Hoang Long' WHERE MailID='trinhvand@gmail.com'
Create login example with password='123456'
create user example from login example
revoke ALL on Contacts from example
grant select on contacts To example

