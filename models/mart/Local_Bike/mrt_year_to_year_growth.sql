-- Compare current year vs previous year sales
with yearly as (
  select
      extract(year from order_date) as year,
      sum(net_sales) as net_sales
  from {{ ref('int_fact_sales') }}
  group by 1
)
select
  year,
  net_sales,
  lag(net_sales) over (order by year) as prev_year_sales,
  round(((net_sales - lag(net_sales) over (order by year)) / nullif(lag(net_sales) over (order by year), 0)) * 100, 2) as yoy_growth_pct
from yearly
order by year
