with
    source_data as (
       select
            customerid as customer_id
            , country
            , city
            , fax
            , postalcode as postal_code   
            , region
            , contactname as contact_name
            , phone
            , companyname as company_name
            , contacttitle as contact_title
		from {{source("NORTHWIND_RAW", "CUSTOMERS")}}
)

select *
from source_data
