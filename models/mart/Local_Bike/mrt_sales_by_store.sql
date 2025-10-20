-- Net sales by store and date
select
    fs.order_date,
    st.store_id,
    st.store_name,
    sum(fs.net_sales) as net_sales,
    sum(fs.quantity) as quantity_sold
from {{ ref('int_fact_sales') }} fs
left join {{ ref('int_dim_stores') }} st on fs.store_id = st.store_id
group by 1,2,3
order by fs.order_date, st.store_name
