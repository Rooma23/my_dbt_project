-- Sales and orders by staff
select
    st.staff_id,
    st.staff_name,
    st.store_name,
    count(distinct fs.order_id) as order_count,
    sum(fs.net_sales) as total_sales,
    round(sum(fs.net_sales) / nullif(count(distinct fs.order_id), 0), 2) as avg_order_value
from {{ ref('int_fact_sales') }} fs
left join {{ ref('int_dim_staffs') }} st on fs.staff_id = st.staff_id
group by 1,2,3
order by total_sales desc
