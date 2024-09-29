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
		from {{source("NORTHWIND_RAW", "CUSTOMERS")}}
)

select *
from source_data
