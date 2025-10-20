with source_main as (
    select * from {{ source('Local_Bike', 'staffs') }}
),
stg_staffs as (
    select
        staff_id,
        trim(first_name) as first_name,
        trim(last_name) as last_name,
        lower(email) as email,
        phone,
        cast(active as boolean) as is_active,
        store_id,
        manager_id
    from source_main
)
select * from stg_staffs
