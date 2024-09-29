with
    source_data as (
        select
            supplierid as supplier_id
            ,  country
            ,  city
            ,  fax
            ,postalcode as  postal_code
            ,  homepage
            ,  region
            ,contactname as  contact_name
            ,phone
            ,companyname as  company_name
            ,contacttitle as contact_title

        from {{source("NORTHWIND_RAW", "SUPPLIERS")}}
    )

select *
from source_data