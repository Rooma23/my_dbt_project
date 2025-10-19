-- Daily aggregated sales by store and category
select
    fs.order_date,
    s.store_name,
    p.category_name,
    sum(fs.net_sales) as net_sales,
    sum(fs.quantity) as total_units
from {{ ref('int_fact_sales') }} fs
left join {{ ref('int_dim_stores') }} s on fs.store_id = s.store_id
left join {{ ref('int_dim_products') }} p on fs.product_id = p.product_id
group by 1,2,3
order by fs.order_date, s.store_name
