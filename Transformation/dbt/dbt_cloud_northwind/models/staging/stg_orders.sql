with
    source_data as (
        select
           orderid  as order_id
           ,employeeid as  employee_id
           ,orderdate as  order_date
           ,customerid  as  customer_id
           ,shipregion  as  ship_region
           ,shippeddate  as  shipped_date
           ,shipcountry  as  ship_country
           ,shipname  as  ship_name
           ,shippostalcode as  ship_postal_code
           ,shipcity as  ship_city
            , freight
            , shipvia as shipper_id
            ,shipaddress as  ship_address
            ,requireddate as required_date
        from {{source("NORTHWIND_RAW", "ORDERS")}}
    )

select *
from source_data