with source_main as (
    select * from {{ source('Local_Bike', 'order_items') }}
),
stg_order_items as (
    select
        order_id,
        item_id,
        product_id,
        quantity,
        list_price,
        discount,
        round(quantity * list_price * (1 - discount), 2) as gross_sales
    from source_main
)
select * from stg_order_items
