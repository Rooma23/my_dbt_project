{% docs mrt_top_products %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Top Products (`mrt_top_products.sql`)

### Description

Identifies the top products by net sales and quantity sold.

### Metrics Calculated

| Metric            | Description                   |
| ----------------- | ----------------------------- |
| `product_name`    | Name of the product           |
| `brand_name`      | Product brand                 |
| `category_name`   | Product category              |
| `total_net_sales` | Total net revenue per product |
| `total_quantity`  | Total units sold per product  |

### Source Models

- `fact_sales`
- `dim_products`

### Usage

Used for bar charts and leaderboard visualizations of best-selling products.

{% enddocs %}
