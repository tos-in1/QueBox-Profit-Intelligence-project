/*
==================================================================================================================
Create Database and Schemas
==================================================================================================================
Script Purpose: 
	The purpose of this script is to create a new database called 'datawarehouse' after checking if it already 
	exists.If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
	within the database. 
	
	They are: bronze, silver and gold.
==================================================================================================================
*/


USE master;
GO

-- Drop and recreate the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse
END;
GO

-- Create the 'datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

-- Create Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO