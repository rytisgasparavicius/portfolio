with
    source_data as (
       select
            country
            , city
            , fax
            , postalcode
            , region
            , customerid
            , contactname
            , phone
            , companyname
            , contacttitle
		from NORTHWIND_RAW.STAGING_FIVETRAN_DBO.customers
)

select *
from source_data
