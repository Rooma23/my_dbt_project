with source_main as (
    select * from {{ source('Local_Bike', 'stores') }}
),
stg_stores as (
    select
        store_id,
        store_name,
        lower(email) as email,
        phone,
        street,
        city,
        state,
        zip_code
    from source_main
)
select * from stg_stores
