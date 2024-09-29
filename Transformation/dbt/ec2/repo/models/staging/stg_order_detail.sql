with
    source_data as (
        select
            orderid as order_id
            , productid as product_id
            , discount
            , unitprice as unit_price
            , quantity
          
        from {{source("NORTHWIND_RAW", "ORDER_DETAILS")}}
    )

select *
from source_data