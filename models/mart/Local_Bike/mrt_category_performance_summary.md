{% docs mrt_category_performance_summary %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Category Performance (`mrt_category_performance_summary.sql`)

### Description

Summarizes sales performance by product category.

### Metrics Calculated

| Metric           | Description                      |
| ---------------- | -------------------------------- |
| `category_name`  | Product category name            |
| `net_sales`      | Total sales revenue per category |
| `discounts`      | Total discounts applied          |
| `avg_list_price` | Average list price of products   |
| `total_units`    | Quantity sold                    |

### Source Models

- `fact_sales`
- `dim_products`

### Usage

Used for comparing product categories via stacked bars or summary tables.

{% enddocs %}
