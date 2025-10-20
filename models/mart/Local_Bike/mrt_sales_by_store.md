{% docs mrt_sales_by_store %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Sales by Store (`mrt_sales_by_store.sql`)

### Description

Aggregates daily sales and quantities sold by store.

### Metrics Calculated

| Metric          | Description                   |
| --------------- | ----------------------------- |
| `order_date`    | Transaction date              |
| `store_name`    | Name of the store             |
| `net_sales`     | Total daily sales amount      |
| `quantity_sold` | Total quantity sold per store |

### Source Models

- `fact_sales`
- `dim_stores`

### Usage

Ideal for line charts or time-series analysis of store performance.

{% enddocs %}
