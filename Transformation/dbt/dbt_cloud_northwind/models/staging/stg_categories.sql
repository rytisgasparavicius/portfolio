{{ config(materialized='table') }}
select
   *
from NORTHWIND_RAW.STAGING_FIVETRAN_DBO.CATEGORIES