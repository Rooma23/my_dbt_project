-- KPI Overview
select
    order_date,
    count(distinct fs.order_id) as total_orders,
    count(distinct fs.customer_id) as active_customers,
    sum(fs.net_sales) as total_net_sales,
    sum(fs.discount_amount) as total_discounts,
    avg(fs.net_sales) as avg_order_value,
    sum(fs.quantity) as total_items_sold
from {{ ref('int_fact_sales') }} fs
group by order_date
order by order_date


