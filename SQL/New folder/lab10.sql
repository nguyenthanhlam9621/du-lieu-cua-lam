USE master 
GO
 
 IF EXISTS(SELECT*FROM sys.databases WHERE Name LIKE 'lap10')
 DROP DATABASE lap10
 GO

 CREATE DATABASE lap10
 GO

 USE lap10
 GO

 CREATE TABLE Toys(
 ProductCode varchar(5) NOT NULL,
 [Name] varchar(30),
 Category varchar(30),
 Manufacturer varchar(40),
 AgeRange varchar(15),
 UnitPrice money,
 Netweight int,
 QtyOnHand int 
 )
 GO

 ALTER TABLE Toys
 ADD CONSTRAINT Pk_Toys PRIMARY KEY (ProductCode)
 GO


 INSERT INTO Toys VALUES 
 ('sp1','Do choi 1','loai 1','nha sx1','tu 3-5 tuoi',15,100,20),
 ('sp2','Do choi 2','loai 2','nha sx2','tu 5-6 tuoi',20,200,21),
 ('sp3','Do choi 3','loai 3','nha sx3','tu 6-7 tuoi',25,300,22),
 ('sp4','Do choi 4','loai 4','nha sx4','tu 7-8 tuoi',30,400,23),
 ('sp5','Do choi 5','loai 5','nha sx5','tu 8-9 tuoi',35,500,24),
 ('sp6','Do choi 6','loai 6','nha sx6','tu 9-10 tuoi',40,600,25),
 ('sp7','Do choi 7','loai 7','nha sx7','tu 10-11 tuoi',45,700,26),
 ('sp8','Do choi 8','loai 8','nha sx8','tu 11-12 tuoi',50,800,27),
 ('sp9','Do choi 9','loai 9','nha sx9','tu 12-13 tuoi',55,900,28),
 ('sp10','Do choi 10','loai 10','nha sx10','tu 14-15 tuoi',60,1000,29),
 ('sp11','Do choi 11','loai 11','nha sx11','tu 16-17 tuoi',65,1100,30),
 ('sp12','Do choi 12','loai 12','nha sx12','tu 18-19 tuoi',70,1200,31),
 ('sp13','Do choi 13','loai 13','nha sx13','tu 20-21 tuoi',75,1300,32),
 ('sp14','Do choi 14','loai 14','nha sx14','tu 22-23 tuoi',80,1400,33),
 ('sp15','Do choi 15','loai 15','nha sx15','tu 23-24 tuoi',90,1500,34)
-- 2 Viết câu lệnh tạo Thủ tục lưu trữ có tên là HeavyToys cho phép liệt kê tất cả các loại đồ chơi có trọng lượng lớn hơn 500g.
GO
CREATE PROC HeavyToys 
AS
SELECT * FROM Toys WHERE Netweight>500
GO

--3Viết câu lệnh tạo Thủ tục lưu trữ có tên là PriceIncreasecho phép tăng giá của tất cả các loại đồ chơi lên thêm 10 đơn vị giá.
GO
CREATE PROC PriceIncreasecho AS
UPDATE Toys SET Netweight+=10
GO
--4Viết câu lệnh tạo Thủ tục lưu trữ có tên là QtyOnHand làm giảm số lượng đồ chơi còn trong của hàng mỗi thứ 5 đơn vị.
GO
CREATE PROC QtyOnHand AS 
UPDATE Toys SET QtyOnHand -=5
GO
--5Thực thi 3 thủ tục lưu trữ trên.
EXEC HeavyToys
EXEC PriceIncreasecho
EXEC QtyOnHand

--10.1
EXEC sp_helptext 'HeavyToys'
SELECT *FROM sys.sql_modules 
SELECT OBJECT_DEFINITION(OBJECT_ID('QtyOnHand'))
--10-2Viết câu lệnh hiển thị các đối tượng phụ thuộc của mỗi thủ tục lưu trữ trên
EXEC sp_depends 'HeavyToys'
EXEC sp_depends 'PriceIncreasecho'
EXEC sp_depends 'QtyOnHand'
