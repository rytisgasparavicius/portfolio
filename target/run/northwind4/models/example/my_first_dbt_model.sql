
  create or replace   view NORTHWIND_RAW.DBT.my_first_dbt_model
  
   as (
    select
   CATEGORYID
from NORTHWIND_RAW.STAGING_FIVETRAN_DBO.CATEGORIES
  );

