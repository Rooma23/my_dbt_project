{% docs mrt_daily_sales_summary %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Daily Sales Summary (`mrt_daily_sales_summary.sql`)

### Description

Provides daily aggregated sales by store and product category.

### Metrics Calculated

| Metric          | Description              |
| --------------- | ------------------------ |
| `order_date`    | Date of sale             |
| `store_name`    | Store name               |
| `category_name` | Product category         |
| `net_sales`     | Total daily sales amount |
| `total_units`   | Total products sold      |

### Source Models

- `fact_sales`
- `dim_stores`
- `dim_products`

### Usage

Used for time-based visualizations and forecasting.

{% enddocs %}
