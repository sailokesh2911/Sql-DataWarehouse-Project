/*
==========================================================================================
CREATE DATABASE AND SCHEMAS
==========================================================================================
Script Purpose: 
      This script creates a new database named 'DataWarehouse' after checking if it already exists.
      If the database exists, it is dropped and recreated. Additionally, the scripts sets up new three schemas
      within the database: 'bronze' , 'silver' , 'gold'.
WARNING:
     Running this script will drop the entire 'DataWarehouse' database if it exists.
     All data in the database will be permanently deleted. Proceeded with caution
     and ensure you have proper backups before runnig the script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBCK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO 

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
