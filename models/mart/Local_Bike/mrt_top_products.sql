-- Top products by net sales
select
    p.product_id,
    p.product_name,
    p.brand_name,
    p.category_name,
    sum(fs.net_sales) as total_net_sales,
    sum(fs.quantity) as total_quantity
from {{ ref('int_fact_sales') }} fs
left join {{ ref('int_dim_products') }} p on fs.product_id = p.product_id
group by 1,2,3,4
order by total_net_sales desc 