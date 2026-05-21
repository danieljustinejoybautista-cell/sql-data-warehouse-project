/*
====================================================================
Create Database and Schema
====================================================================

Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exist, it is dropped and recreated. Additionally, the script sets up schemas
  within the database: 'bronze, 'silver' and 'gold'

Warning: 
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/


use master;
go

--Check if the database exist, remove if true
if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
  alter DATABASE DataWarehouse set single_user with rollback immediate;
  drop DATABASE DataWarehouse;
end
go

--Creating database
create database DataWarehouse;
go

--Adding schema
use DataWarehouse; go
  
create schema bronze; go
  
create schema silver; go
  
create schema gold; go
