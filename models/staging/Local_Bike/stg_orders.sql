with source_main as (
    select * from {{ source('Local_Bike', 'orders') }}
),
stg_orders as (
    select
        order_id,
        customer_id,
        store_id,
        staff_id,
        order_status,
        order_date,
        required_date,
        safe_cast(
            nullif(nullif(shipped_date, ''), 'NULL')
            as date
        ) as shipped_date
    from source_main
)
select * from stg_orders
