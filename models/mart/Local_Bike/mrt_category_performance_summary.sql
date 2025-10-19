-- Category-level sales, discounts, and average price
select
    p.category_name,
    sum(fs.net_sales) as net_sales,
    sum(fs.discount_amount) as discounts,
    round(avg(fs.list_price), 2) as avg_list_price,
    sum(fs.quantity) as total_units
from {{ ref('int_fact_sales') }} fs
left join {{ ref('int_dim_products') }} p on fs.product_id = p.product_id
group by 1
order by net_sales desc
