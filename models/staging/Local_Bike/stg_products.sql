with source_main as (
    select * from {{ source('Local_Bike', 'products') }}
),
stg_products as (
    select
        product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        list_price
    from source_main
)
select * from stg_products
