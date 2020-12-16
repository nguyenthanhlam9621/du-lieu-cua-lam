USE master
GO

IF Exists( SELECT * FROM sys.databases WHERE Name='lab05')
DROP DATABASE lab05
GO

CREATE DATABASE lab05
GO
USE lab05
GO

CREATE TABLE PhongBan(
MaPB int Primary key identity,
TenPB nvarchar(50))
GO

CREATE TABLE NhanVien(
MaNV varchar(7),
TenNV nvarchar(50),
NgaySinh Datetime,
SoCMND char(9),
GioiTinh char(1),
DiaChi nvarchar(100),
NgayVaoLam Datetime,
MaPB int,

CONSTRAINT pk_NhanVien  PRIMARY KEY (MaNV),
CONSTRAINT Check_NgaySinh CHECK(NgaySinh<getdate()),
CONSTRAINT Check_SoCMND CHECK(ISNUMERIC(SoCMND)=1),
CONSTRAINT Check_GioiTinh CHECK(GioiTinh='M' OR GioiTinh='F'),
CONSTRAINT Check_NgayVaoLam CHECK(DATEDIFF(YEAR,NgaySinh,NgayVaoLam) >= 20),
CONSTRAINT fk_NhanVien  FOREIGN KEY (MaPB) REFERENCES PhongBan(MaPB)
)
GO

CREATE TABLE LuongDA(
MaDA varchar(8),
MaNV varchar(7),
NgayNhan Datetime  NOT NULL default(getdate()),
SoTien Money CHECK(SoTien>0),

CONSTRAINT fk_LuongDA FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
CONSTRAINT pk_LuongDA PRIMARY KEY (MaDA,MaNV),

)
GO

INSERT INTO PhongBan(TenPB) VALUES('PHONG 1')
INSERT INTO PhongBan(TenPB) VALUES('PHONG 2')
INSERT INTO PhongBan(TenPB) VALUES('PHONG 3')
INSERT INTO PhongBan(TenPB) VALUES('PHONG 4')
INSERT INTO PhongBan(TenPB) VALUES('PHONG 5')
GO

INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (1111111,N'N TÊN THaNG MoT','1-1-1979',123456789,'F','so1','1-1-2019',1)
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (2222222,N'N TÊN THaNG HAI','1-1-1979',223456789,'M','so2','1-1-2020',2)
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (3333333,N'TÊN THaNG BA','1-1-1979',323456789,'F','so3','1-1-2021',1)
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (4444444,N'TÊN THaNG BoN','1-1-2002',423456789,'M','so4','1-1-2022',2)
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (5555555,N'TÊN THaNG NaM','1-1-1979',523456789,'F','so5','1-1-2023',1)
INSERT INTO NhanVien(MaNV,TenNV,NgaySinh,SoCMND,GioiTinh,DiaChi,NgayVaoLam,MaPB) VALUES (6666666,N'thang thu viec','1-1-1979',623456789,'F','so6','1-1-2023',1)
GO

INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES('Du An 1',1111111,'01-01-2020',1000)
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES('Du An 2',2222222,'01-01-2020',2000)
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES('Du An 3',3333333,'01-01-2013',3000)
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES('Du An 1',4444444,'01-01-2020',4000)
INSERT INTO LuongDA(MaDA,MaNV,NgayNhan,SoTien) VALUES('Du An 5',5555555,'01-01-2020',12000)
--2: thong tin cac bang
SELECT * FROM PhongBan
SELECT * FROM NhanVien
SELECT * FROM LuongDA
--3: nhung nhan vien co gioi tinh F
SELECT * from NhanVien WHERE (GioiTinh='F')
--4: hien thi cac du an
SELECT * FROM LuongDA WHERE (MaDA='Du An 1')
SELECT * FROM LuongDA WHERE (MaDA='Du An 2')
SELECT * FROM LuongDA WHERE (MaDA='Du An 3')
SELECT * FROM LuongDA WHERE (MaDA='Du An 4')
SELECT * FROM LuongDA WHERE (MaDA='Du An 5')
--5: Hien thi tong luong nhan vien
SELECT MaNv,SUM(Sotien) as 'TONG' From LuongDA GROUP BY MaNV
--6: hien thi cac nhan vien tren 1 phong ban
SELECT * FROM PhongBan WHERE MaPB LIKE '1'
--7: hien thi luong phong 1
SELECT * FROM LuongDA WHERE MaNV in (
	SELECT MaNV FROM NhanVien WHERE MaPB in (
		SELECT MaPB FROM PhongBan WHERE TenPB LIKE 'PHONG 1')
		)
--8: hien thi so luong nhan vien cua 1 phong
SELECT TenPB, COUNT(Nhanvien.MaPB) [So LuongNV] FROM PhongBan JOIN NhanVien ON PhongBan.MaPB= NhanVien.MaPB WHERE NhanVien.MaPB LIKE '1' GROUP BY TenPB
UNION
SELECT TenPB, COUNT(Nhanvien.MaPB) [So LuongNV] FROM PhongBan JOIN NhanVien ON PhongBan.MaPB= NhanVien.MaPB WHERE NhanVien.MaPB LIKE '2' GROUP BY TenPB
--9: Hien thi nhung ai co du an
SELECT * FROM NhanVien WHERE MaNV in (
	SELECT MaNV FROM LuongDA)
--10:PHONG CO NH NG NHAT
SELECT TOP 1 PhongBan.TenPB,COUNT(*) [So LuongNV] FROM PhongBan JOIN NhanVien ON PhongBan.MaPB = NhanVien.MaPB GROUP BY TenPB ORDER BY [So LuongNV] DESC
--11: TONG SO LUONG NHAN VIEN CUA PHONG 1
SELECT TenPB, COUNT(MaPB) [So LuongNV] FROM PhongBan WHERE MaPB LIKE '1' GROUP BY TenPB
--12: LUONG CUA NHAN VIEN CO SO CMND cuoi bang 9
SELECT LuongDA.*,NhanVien.SoCMND FROM LuongDA JOIN NhanVien ON LuongDA.MaNV=NhanVien.MaNV WHERE NhanVien.SoCMND LIKE '%9'
--13: NHAN VIEN CO LUONG CAO NHAT
SELECT TOP 1 * FROM LuongDA ORDER BY SoTien DESC
--14: NHAN VIEN O PHONG 1 VA co LUONG >12000
SELECT * FROM NhanVien WHERE MaNV in (
	SELECT MaNV FROM LuongDA WHERE SoTien>=12000) AND MaPB LIKE '1'
--15: TONG LUONG TUNG PHONG
SELECT PhongBan.TenPB,SUM(LuongDA.SoTien) AS'TONG LUONG TUNG PHONG' FROM PhongBan JOIN NhanVien ON PhongBan.MaPB=NhanVien.MaPB JOIN LuongDA ON LuongDA.MaNV=NhanVien.MaNV  GROUP BY PhongBan.TenPB
--16: DU AN CO 2 NGUOI THAM GIA
SELECT MaDA,COUNT(MaNV) [so Nguoi] FROM LuongDA GROUP BY MaDA HAVING COUNT(MaNV) >=2
--17:Thong tin nhan vien co chu dau la 'N'
SELECT *FROM NhanVien WHERE TenNV LIKE 'N%'
--18: NHAN VIEN DUOC NHAN TIEN TRONG NAM 2013
SELECT * FROM NhanVien WHERE MaNV IN (
	SELECT MaNV FROM LuongDA WHERE NgayNhan>= '1-1-2013' AND NgayNhan <= '1-1-2013' )
--19: NHAN VIEN KHONG THAM GIA DU AN NAO
SELECT * FROM NhanVien WHERE MaNV NOT IN (
	SELECT MaNV FROM LuongDA )
--20: XOA DU AN CO MA LA 'DU AN 2'
DELETE FROM LuongDA WHERE MaDA LIKE 'Du An 2'
--21: XOA DI NHUNG NHAN VIEN CO LUONG 20000 o bang LuongDA
DELETE FROM LuongDA WHERE SoTien >=20000 
--22: CAT NHAT LUONG 'Du An 1' them 10%
UPDATE LuongDA SET SoTien += SoTien*10/100 WHERE MaDA LIKE 'Du An 1'
--23:XOA NHUNG NHAN VIEN KHONG CO MA NV TRONG BANG LuongDA
DELETE FROM NhanVien WHERE MaNV Not IN ( 
	SELECT MaNV FROM LuongDA)
--24:VIET LAI NGAY VAO LAM CUA NHAN VIEN 'Phong 1' ngay vao lam 12/02/1999
UPDATE NhanVien SET NgayVaoLam='02-12-1999' WHERE MaPB LIKE '1'
