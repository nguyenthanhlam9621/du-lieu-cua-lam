USE master 
GO
 
 IF EXISTS(SELECT*FROM sys.databases WHERE Name LIKE 'lab08_2')
 DROP DATABASE lab08_2
 GO

 CREATE DATABASE lab08_2
 GO

 USE lab08_2
 GO

 CREATE TABLE Customers(
 IDKhachhang int NOT NULL,
 TenKhachHang nvarchar(50),
 SoChungMinh varchar(20),
 DiaChi varchar(20),
 )
 GO

 ALTER TABLE Customers
 ADD CONSTRAINT PK_CUS PRIMARY KEY (IDKhachhang)
 GO

  CREATE TABLE Services(
 ServiceID int NOT NULL,
 [Name] varchar(10),
 [Description] varchar(50),
 )
 GO
 ALTER TABLE Services
 ADD CONSTRAINT PK_Ser PRIMARY KEY (ServiceID)
 GO

 CREATE TABLE Tel(
 SoThueBao varchar(20) NOT NULL,
 LoaiThueBao varchar(15),
 NgayDangKy datetime,

 IDKhachhang int,
 ServiceID int
 )
 GO

 ALTER TABLE Tel
 ADD CONSTRAINT PK_Tel PRIMARY KEY (SoThueBao)
 GO
 ALTER TABLE Tel
 ADD CONSTRAINT FK_Cus FOREIGN KEY (IDKhachhang) REFERENCES Customers(IDKhachhang)
 GO
  ALTER TABLE Tel
 ADD CONSTRAINT FK_Ser FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
 GO




 INSERT INTO Customers VALUES 
 (1,N'N VAN A','123456789','Ha Noi'),
 (2,N'N VAN B','223456789','Hai Phong'),
 (3,N'N VAN C','323456789','Ha Noi')
 GO

 INSERT INTO Services VALUES
 (1,'3G','Mang Binh Thuong'),
 (2,'4G','Mang Nhanh'),
 (3,'5G','Mang Sieu Nhanh')
 GO
 INSERT INTO Tel VALUES
 ('0987654321','TRA TRUOC','01-01-2000',1,1),
 ('0907654321','TRA SAU','12-12-2009',1,2),
 ('097554321','TRA TRUOC','01-01-2001',2,2),
 ('097634321','TRA TRUOC','01-01-2002',3,3)
 GO
 --4.1 Hiển thị toàn bộ thông tin của các khách hàng của công ty.
 SELECT *FROM Customers
 --4.2Hiển thị toàn bộ thông tin của các số thuê bao của công ty.
 SELECT *FROM Tel
 --5.1Hiển thị toàn bộ thông tin của thuê bao có số: 0123456789
 SELECT *FROM Tel WHERE IDKhachhang IN (
	SELECT IDKhachhang FROM Customers WHERE SoThueBao LIKE '0123456789')
	GO
--5.2Hiển thị thông tin về khách hàng có số CMTND: 123456789
SELECT * FROM Customers WHERE SoChungMinh LIKE '123456789'
--5.3Hiển thị các số thuê bao của khách hàng có số CMTND:123456789
SELECT SoThueBao FROM Tel WHERE IDKhachhang IN (
	SELECT IDKhachhang FROM Customers WHERE SoChungMinh LIKE '123456789')
--5.4Liệt kê các thuê bao đăng ký vào ngày 12/12/09
SELECT *FROM Tel WHERE NgayDangKy = '12-12-2009'
--5.5Liệt kê các thuê bao có địa chỉ tại Hà Nội
SELECT *FROM Tel WHERE IDKhachhang IN (
	SELECT IDKhachhang FROM Customers WHERE DiaChi LIKE 'Ha Noi')
--6.1Tổng số khách hàng của công ty.
SELECT COUNT(IDKhachhang)AS[SO KHACH] FROM Customers
--6.2Tổng số thuê bao của công ty.
SELECT COUNT(SoThueBao)AS[So Luong Thue Bao] FROM Tel
--6.3Tổng số thuê bào đăng ký ngày 12/12/09.
SELECT COUNT(SoThueBao) AS [DK12-12-09] FROM Tel WHERE NgayDangKy = '12-12-2009'
--6.4Hiển thị toàn bộ thông tin về khách hàng và thuê bao của tất cả các số thuê bao.
SELECT *FROM Customers JOIN Tel ON Customers.IDKhachhang=Tel.IDKhachhang JOIN Services ON Tel.ServiceID=Services.ServiceID
--7.1Viết câu lệnh để thay đổi trường ngày đăng ký là not null.
ALTER TABLE Tel
ALTER COLUMN NgayDangKy DATETIME NOT NULL
GO
--7.2Viết câu lệnh để thay đổi trường ngày đăng ký là trước hoặc bằng ngày hiện tại.
ALTER TABLE Tel
ADD CONSTRAINT ck_ngaydangky CHECK (NgayDangKy <= GETDATE())
GO
--7.3Viết câu lệnh để thay đổi số điện thoại phải bắt đầu 09
ALTER TABLE Tel
ADD CONSTRAINT ck_Sothuebao CHECK (SoThueBao LIKE '09%')
GO
SELECT * From tel
--7.4Viết câu lệnh để thêm trường số điểm thưởng cho mỗi số thuê bao.

--8.1 Đặt chỉ mục (Index) cho cột Tên khách hàng của bảng chứa thông tin khách hàng
CREATE INDEX IX_Customers ON Customers(TenKhachHang)