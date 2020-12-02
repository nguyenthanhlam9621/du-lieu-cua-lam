use master
go
if (DB_ID('Exmaple4')IS NOT NULL)
Drop Database EXAMPLE4
create database EXAMPLE4
on primary
( NAME=N'Customer_DB',
filename=N'D:\tu nghiep 3\baitap 1\Example4.mdf')
LOG ON
( NAME=N'Customer_DB_log',
fileName='D:\tu nghiep 3\baitap 1\Example4.mdf')
collate SQL_Latin1_General_CP1_CI_AS
go 
use EXAMPLE4
go
alter database EXAMPLE4 MODIFY NAME = Example4Test
Go
USE Example4Test
go
Execute sp_changedbowner @loginame ='sa'
exec sp_changedbowner 'sa'
go

use Example4Test 
go
alter database example4Test SET AUTO_SHRINK ON
GO
USE master
go
IF(DB_ID('Example4')IS NOT NULL)
Drop database Example4
go
CREATe DATAbase example4
on Primary
( Name='Example4_primary',
FileNAMe='D:\tu nghiep 3\baitap 1\Example4_primary',
Size =4MB,
maxsize=10mb,
filegrowth=1mb),
filegroup example4_FG1
( NAMe ='Example4_Primary',
filename='D:\tu nghiep 3\baitap 1\example4_FG1',
size=1mb,
maxsize=10mb,
filegrowth=1mb),
( NAME='Example4_FG1_Dat2',
filename='D:\tu nghiep 3\baitap 1\Example4_FG1_Dat2',
size=1mb,
maxsize=10mb,
filegrowth=1mb)