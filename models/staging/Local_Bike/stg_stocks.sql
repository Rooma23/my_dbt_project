with source_main as (
    select * from {{ source('Local_Bike', 'stocks') }}
),
stg_stocks as (
    select
        store_id,
        product_id,
        quantity
    from source_main
)
select * from stg_stocks
