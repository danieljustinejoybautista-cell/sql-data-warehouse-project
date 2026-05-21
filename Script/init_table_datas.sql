/*
==================================================================================================================================
Bulk Insert Data from the file path into 'bronze' schema tables.
==================================================================================================================================

Purpose:
  This script will delete the existing datas in the tables listed above and upload initial data 
  from the folder into the tables in 'bronze' schema.

Warning:
  Running this script will remove all the data from the table above then replace with the datas in the file folder.
  Any changes will be removed and be replaced by the datas in the file folder.
*/
truncate table bronze.crm_cust_info;

bulk insert bronze.crm_cust_info
from 'C:\DataWarehouse\source_crm\cust_info.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);

truncate table bronze.crm_prd_info;

bulk insert bronze.crm_prd_info
from 'C:\DataWarehouse\source_crm\prd_info.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);

truncate table bronze.crm_sales_details;

bulk insert bronze.crm_sales_details
from 'C:\DataWarehouse\source_crm\sales_details.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);

--

truncate table bronze.erp_cust_az12;

bulk insert bronze.erp_cust_az12
from 'C:\DataWarehouse\source_erp\CUST_AZ12.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);

truncate table bronze.erp_loc_a101;

bulk insert bronze.erp_loc_a101
from 'C:\DataWarehouse\source_erp\LOC_A101.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);

truncate table bronze.erp_px_cat_g1v2;

bulk insert bronze.erp_px_cat_g1v2
from 'C:\DataWarehouse\source_erp\PX_CAT_G1V2.csv'
with
(
	firstrow = 2,
	fieldterminator = ',',
	tablock
);
