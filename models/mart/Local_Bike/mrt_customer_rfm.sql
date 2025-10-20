-- Basic RFM table
with last_order as (
  select customer_id, max(order_date) as last_order_date
  from {{ ref('int_fact_sales') }}
  group by 1
),
freq as (
  select customer_id, count(distinct order_id) as frequency
  from {{ ref('int_fact_sales') }}
  group by 1
),
monetary as (
  select customer_id, sum(net_sales) as monetary_value
  from {{ ref('int_fact_sales') }}
  group by 1
)
select
  c.customer_id,
  c.full_name,
  coalesce(date_diff(current_date, lo.last_order_date, day), null) as recency_days,
  f.frequency,
  m.monetary_value
from {{ ref('int_dim_customers') }} c
left join last_order lo on c.customer_id = lo.customer_id
left join freq f on c.customer_id = f.customer_id
left join monetary m on c.customer_id = m.customer_id
order by m.monetary_value desc
