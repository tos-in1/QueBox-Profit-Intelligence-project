/*
============================================================================
Create Database and Schemas
============================================================================
The purpose of this script is to create a new database called 'datawarehouse' after checking if it already exists.
Ifthe database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the 
database. They are: bronze, silver and gold.
*/


USE master;
GO

-- Drop and recreate the 'datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'datawarehouse')
BEGIN
	ALTER DATABASE datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE datawarehouse
END;
GO


-- Create the 'datawarehouse' database
CREATE DATABASE datawarehouse;
GO

USE datawarehouse;
GO


-- Create Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
