with
    suppliers as (
        select *
        from {{ ref('stg_suppliers') }}
    )

    , transformed as (
        select
            row_number() over (order by suppliers.supplier_id) as supplier_sk 
            , suppliers.supplier_id
            , suppliers.country
            , suppliers.city
            , suppliers.fax
            , suppliers.postal_code
            , suppliers.homepage
            , suppliers.region
            , suppliers.contact_name
            , suppliers.phone
            , suppliers.company_name
            , suppliers.contact_title
        from suppliers
    )

select *  from transformed