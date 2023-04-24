USE master;
GO
CREATE DATABASE ParkingManagement
ON
( NAME = ParkingManagement_dat,
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ParkingManagement_dat.mdf',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5 )
LOG ON
( NAME = ParkingManagement_log,
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ParkingManagement_log.ldf',
SIZE = 5MB,
MAXSIZE = 25MB,
FILEGROWTH = 5MB );
GO
CREATE TABLE Customers(
	Customer_ID INT IDENTITY(1,1),
	Customer_name NVARCHAR(100)
	CONSTRAINT pkCustomer PRIMARY KEY (Customer_ID)
	);

CREATE TABLE Vehicle(
	Vehicle_ID INT IDENTITY(1,1),
	License_Plates VARCHAR(12), 
	Customer_ID INT,
	CONSTRAINT fk FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID)

	);