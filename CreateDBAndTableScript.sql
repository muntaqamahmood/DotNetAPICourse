-- USE master
-- DROP DATABASE DotNetCourseDatabase
IF EXISTS (
    SELECT name FROM master.dbo.sysdatabases 
    WHERE name = N'DotNetCourseDatabase' 
    ) 
BEGIN 
    SELECT 'DB Exists' AS Message
END
ELSE
BEGIN
    CREATE DATABASE DotNetCourseDatabase
    SELECT 'New Database is Created'
END
    
USE DotNetCourseDatabase
GO

CREATE SCHEMA TutorialAppSchema
GO

CREATE TABLE TutorialAppSchema.Computer(
    ComputerId INT IDENTITY(1,1) PRIMARY KEY,
    Motherboard NVARCHAR(50),
    CPUCores INT,
    HasWifi BIT,
    HasLTE BIT,
    ReleaseDate DATE,
    Price DECIMAL(18,4),
    VideoCard NVARCHAR(50)
);

-- check if exists
select * from TutorialAppSchema.Computer