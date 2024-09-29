with
    source_data as (
        select
            phone
            ,companyname as  company_name
            ,shipperid as shipper_id
      
        from {{source("NORTHWIND_RAW", "SHIPPERS")}}
    )

select *
from source_data