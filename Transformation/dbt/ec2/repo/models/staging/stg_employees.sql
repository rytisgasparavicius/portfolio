with
    source_data as (
        select
            employeeid as employee_id
            , firstname as first_name
            , lastname as last_name
            , country
            , city
            , postalcode as postal_code
            , hiredate as hire_date
            , extension
            , birthdate as birth_date
            , region
            , homephone as home_phone
            , reportsto as reports_to
            , title
            , titleofcourtesy as  title_of_courtesy
            , notes

        from {{source("NORTHWIND_RAW", "EMPLOYEES")}}
    )

select *
from source_data