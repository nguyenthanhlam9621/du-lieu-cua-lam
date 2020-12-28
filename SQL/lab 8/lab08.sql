USE master
GO
 
IF EXISTS(SELECT * FROM sys.databases WHERE Name LIKE 'lab08_1')
DROP DATABASE lab08_1
GO

CREATE DATABASE lab08_1
GO 

USE lab08_1
GO

CREATE TABLE Company(
ComID int NOT NULL,
ComName varchar(10),
Tel varchar(20),
[Address] varchar(10)
)
GO

CREATE TABLE Category(
CategoryID int PRIMARY KEY,
CatName nvarchar(20)
)
GO

CREATE TABLE Product(
ProID int IDENTITY Primary KEY,
[Name] nvarchar(20),
[Description] nvarchar(40),
Unit nvarchar(20),
Price money,
Qty int,
ComID int,
CategoryID int,
)
GO

--3:Nhap gia tri cho cac bang
INSERT INTO Company VALUES(123,'ASUS','0983232','TAWAN')
INSERT INTO Company VALUES(234,'NOKIA','0872121','FINLAND')
INSERT INTO Company VALUES(345,'SAMSUNG','0761010','KOREA')
GO

INSERT INTO Category VALUES(1,N'ĐIỆN THOẠI')
INSERT INTO Category VALUES(2,N'MÁY TÍNH')
INSERT INTO Category VALUES(3,N'MÁY IN')
GO

INSERT INTO Product VALUES(N'Máy Tính T450',N'Máy Nhập Cũ',N'CHIẾC',1000,10,123,1)
INSERT INTO Product VALUES(N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'CHIẾC',200,200,234,2)
INSERT INTO Product VALUES(N'Máy In Samsung 450',N'Máy in đang loại bình',N'CHIẾC',100,10,345,3)
GO
--4.1: Hien thi thong tin cong ty
SELECT * FROM Company
--4.2:hien thi thong tin san pham
SELECT * FROM Product

--5.1:Liệt kê danh sách hãng theo thứ thự ngược với alphabet của tên
SELECT * FROM Company ORDER BY ComName DESC
--5.2:Liệt kê danh sách sản phẩm của cửa hàng theo thứ thự giá giảm dần.
SELECT * FROM Product ORDER BY Price DESC
--5.3:Hiển thị thông tin của hãng Asus.
SELECT *FROM Company WHERE ComName LIKE 'ASUS'
--5.4:Liệt kê danh sách sản phẩm còn ít hơn 11 chiếc trong kho
SELECT * FROM Product WHERE Qty < 11
--5.5:Liệt kê danh sách sản phẩm của hãng Asus
SELECT *FROM Product WHERE ComID IN (
	SELECT ComID FROM Company WHERE ComName LIKE 'ASUS')

--6.1:Số hãng sản phẩm mà cửa hàng có.
SELECT COUNT(ComName) AS[SoLuongHang] FROM Company
--6.2:Số mặt hàng mà cửa hàng bán.
SELECT COUNT(ProID) AS[Somathang] FROM Product
--6.3:Tổng số loại sản phẩm của mỗi hãng có trong cửa hàng.
SELECT COUNT(ProID) AS[LoaispcuahangASUS] FROM Product WHERE ComID IN (
	SELECT ComID FROM Company WHERE ComName LIKE 'ASUS')
SELECT COUNT(ProID) AS[LoaispcuahangNOKIA] FROM Product WHERE ComID IN (
	SELECT ComID FROM Company WHERE ComName LIKE 'NOKIA')
SELECT COUNT(ProID) AS[LoaispcuahangSAMSUNG] FROM Product WHERE ComID IN (
	SELECT ComID FROM Company WHERE ComName LIKE 'SAMSUNG')
--6.4:Tổng số đầu sản phẩm của toàn cửa hàng.
SELECT COUNT(ProID) AS [DAUSP] FROM Product

--7.1:Viết câu lệnh để thay đổi trường giá tiền của từng mặt hàng là dương(>0).
ALTER TABLE Product
ADD CONSTRAINT dk_price CHECK (Price>0)
GO
--7.2: Viết câu lệnh để thay đổi số điện thoại phải bắt đầu bằng 0.
ALTER TABLE Company
ADD CONSTRAINT dk_Tel CHECK (Tel LIKE '0%')
GO
--7.3:Viết các câu lệnh để xác định các khóa ngoại và khóa chính của các bảng.
ALTER TABLE Company 
ADD CONSTRAINT pk_Com PRIMARY KEY (ComID)
GO

ALTER TABLE Product
ADD CONSTRAINT Fk_Company  FOREIGN KEY (ComID) REFERENCES Company(ComID)
GO

ALTER TABLE Product
ADD CONSTRAINT Fk_Category FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
GO


--8.1Thiết lập chỉ mục (Index) cho các cột sau: Tên hàng và Mô tả hàng để tăng hiệu suất truy vấn dữ liệu từ 2 cột này
CREATE INDEX IX_Description ON Product(Description)
CREATE INDEX IX_Name ON Product(Name)