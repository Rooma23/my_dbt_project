with source_main as (
    select * from {{ source('Local_Bike', 'customers') }}
),
stg_customers as (
    select
        customer_id,
        trim(first_name) as first_name,
        trim(last_name) as last_name,
        lower(email) as email,
        phone,
        street,
        city,
        state,
        zip_code
    from source_main
)
select * from stg_customers
