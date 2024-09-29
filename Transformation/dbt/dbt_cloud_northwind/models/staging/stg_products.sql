with
    source_data as (
        select
            productid as product_id
            ,productname as product_name
            ,unitsinstock as units_in_stock
            ,categoryid as category_id
            ,unitprice as unit_price
            ,quantityperunit as quantity_per_unit
            ,reorderlevel as reorder_level
            ,supplierid as supplier_id
            ,unitsonorder as units_on_order

        from {{source("NORTHWIND_RAW", "PRODUCTS")}}
    )

select *
from source_data