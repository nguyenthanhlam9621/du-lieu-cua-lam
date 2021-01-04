USE MASTER 
GO
 
IF EXISTS( SELECT *FROM sys.databases WHERE Name LIKE 'SellingPoint')
DROP DATABASE SellingPoint
GO

CREATE DATABASE SellingPoint
GO

USE SellingPoint
GO

CREATE TABLE Categories(
CateID char(6)NOT NULL,
CateName nvarchar(100) NOT NULL,
[Description] nvarchar(200)

CONSTRAINT Pk_Cate PRIMARY KEY (CateID)
)
GO

CREATE TABLE Parts(
PartID int IDENTITY NOT NULL,
PartName nvarchar(100) NOT NULL,
CateID char(6),
[Description] nvarchar(1000),
Price money NOT NULL DEFAULT'0',
Quantity int DEFAULT'0',
Warranty int DEFAULT'1',
Photo nvarchar(200) DEFAULT'photo/nophoto.png'

CONSTRAINT Pk_Parts PRIMARY KEY (PartID)
CONSTRAINT Fk_Cate FOREIGN KEY (CateID) REFERENCES Categories(CateID)
)

INSERT INTO Categories VALUES 
('ID 1','CPU','Mo TA 1'),
('ID 2','RAM','Mo TA 2'),
('ID 3','HDD','Mo TA 3')
GO

INSERT INTO Parts VALUES
('PName 1','ID 1','Mo Ta P1',50,0,1,N'anh1'),
('PName 2','ID 2','Mo Ta P2',100,0,1,N'anh2'),
('PName 3','ID 3','Mo Ta P3',150,0,1,N'anh3')
GO
--4
SELECT *FROM Parts WHERE Price >100
GO
--5
SELECT *FROM Parts WHERE CateID IN (
	SELECT CateID FROM Categories WHERE CateName LIKE 'CPU')
	GO
--6
CREATE VIEW V_Parts AS
SELECT PartID, PartName, Price, Quantity FROM Categories JOIN Parts on Categories.CateID = Parts.CateID
GO
--7
CREATE VIEW V_TopParts AS
SELECT TOP 5 * FROM Parts ORDER BY Price DESC
GO
