with 
    staging as (
        select *
        from {{ref('stg_customers')}}
)
    , transformed as (
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
        from staging
)

select *  from transformed