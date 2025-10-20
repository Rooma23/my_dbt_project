{% docs mrt_main_performance_indicators %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## KPI Overview (`mrt_main_performance_indicators.sql`)

### Description

Provides aggregated Key Performance Indicators (KPIs) for sales by order date

### Metrics Calculated

| Metric             | Description                              |
| ------------------ | ---------------------------------------- |
| `order_date`       | Order date                               |
| `total_orders`     | Total number of distinct orders          |
| `active_customers` | Number of unique customers who purchased |
| `total_net_sales`  | Total revenue after discounts            |
| `total_discounts`  | Total discount amount given              |
| `avg_order_value`  | Average order value (Net Sales / Orders) |
| `total_items_sold` | Total quantity of products sold          |

### Source Models

- `fact_sales`

### Usage

Use this query to populate KPI cards in dashboards (e.g., Power BI cards, Metabase metrics).

{% enddocs %}
