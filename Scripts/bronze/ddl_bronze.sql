/*
==============================================================================================
Creating Bronze Database Tables
==============================================================================================

Table list
	crm_cust_info
	crm_prd_info
	crm_sales_details
	erp_cust_az12
	erp_loc_a101
	erp_px_cat_g1v2

Script Purpose:
	This script create 6 Tables listed above inside 'bronze' schema in 'DataWarehouse' database,
  the script will check the table one by one if exists.
	If the table exists the script will drop the existing table then re create it.

Warning:
	Running this script will drop the existing table listed above, to avoid losing data, 
  make sure every existing tables listed above has a backup before running this script.
*/


use DataWarehouse;

--Creating CRM Tables
if OBJECT_ID ('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;
create table bronze.crm_cust_info (
	cst_id int,
	cst_key nvarchar(50),
	cst_firstname nvarchar(50),
	cst_lastname nvarchar(50),
	cst_marital_status nvarchar(50),
	cst_gndr nvarchar(50),
	cst_create_date date
);

if OBJECT_ID ('bronze.crm_prd_info', 'U') is not null
	drop table bronze.crm_prd_info;
create table bronze.crm_prd_info (
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt date,
	prd_end_dt date
);

if OBJECT_ID ('bronze.crm_sales_details', 'U') is not null
	drop table bronze.crm_sales_details;
create table bronze.crm_sales_details (
	sls_ord_num nvarchar(50),
	sls_prd_key nvarchar(50),
	sls_cust_id int,
	sls_order_dt date,
	sls_ship_dt date,
	sls_due_dt date,
	sls_sales int,
	sls_quantity int,
	sls_price int
);

--Creating ERP Tables
if OBJECT_ID ('bronze.erp_cust_az12', 'U') is not null
	drop table bronze.erp_cust_az12;
create table bronze.erp_cust_az12 (
	cid nvarchar(50),
	bdate date,
	gen nvarchar(10)
);

if OBJECT_ID ('bronze.erp_loc_a101', 'U') is not null
	drop table bronze.erp_loc_a101;
create table bronze.erp_loc_a101 (
	cid nvarchar(50),
	cntry nvarchar(50)
);

if OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') is not null
	drop table bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2 (
	id nvarchar(50),
	cat nvarchar(50),
	subcat nvarchar(50),
	maintenance nvarchar(50)
);
