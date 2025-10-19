with orders as (
    select * from {{ ref('stg_orders') }}
),

order_items as (
    select * from {{ ref('stg_order_items') }}
),

joined as (
    select
        oi.order_id,
        o.order_date,
        o.customer_id,
        o.store_id,
        o.staff_id,
        oi.product_id,
        oi.quantity,
        oi.list_price,
        oi.discount,
        oi.gross_sales,

        -- métriques calculées
        round(oi.quantity * oi.list_price * (1 - oi.discount), 2) as net_sales,
        round(oi.quantity * oi.list_price * oi.discount, 2) as discount_amount
    from order_items oi
    left join orders o on oi.order_id = o.order_id
)

select * from joined
