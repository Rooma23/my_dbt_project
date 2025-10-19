with source_main as (
    select * from {{ source('Local_Bike', 'categories') }}
),
stg_categories as (
    select
        category_id,
        category_name
    from source_main
)
select * from stg_categories
