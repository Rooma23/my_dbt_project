with source_main as (
    select * from {{ source('Local_Bike', 'brands') }}
),
stg_brands as (
    select
        brand_id,
        brand_name
    from source_main
)
select * from stg_brands
