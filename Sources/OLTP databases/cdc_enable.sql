

EXEC sp_changedbowner 'sa';
EXEC sys.sp_cdc_enable_db;
-- SQL Services and Agent must be run by Local system

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'Customers',
    @role_name     = NULL,
    @supports_net_changes = 1;


select * from 	sys.tables