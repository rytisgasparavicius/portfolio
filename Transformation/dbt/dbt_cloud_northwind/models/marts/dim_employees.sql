with 
/*
 staging as (
        select *
        from {{ref('stg_employees')}}
    )
    ,
*/

    transformed as (
        select
            row_number() over (order by employee_id) as employee_sk 
            , employee_id
            , reports_to
            , first_name
            , last_name
            , country
            , city
            , postal_code
            , hire_date
            , extension
            , birth_date
            , region
            , home_phone
            , title
            , title_of_courtesy
            , notes
        from {{ref('stg_employees')}}
        --from staging
    )

    select *  from transformed