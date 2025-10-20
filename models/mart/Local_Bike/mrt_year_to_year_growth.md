{% docs mrt_year_to_year_growth %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Year-over-Year Growth (`mrt_year_to_year_growth.sql`)

### Description

Compares total annual sales to calculate year-over-year (YoY) growth percentage.

### Metrics Calculated

| Metric            | Description                   |
| ----------------- | ----------------------------- |
| `year`            | Calendar year                 |
| `net_sales`       | Total sales in the given year |
| `prev_year_sales` | Sales from the previous year  |
| `yoy_growth_pct`  | Percentage change YoY         |

### Source Models

- `fact_sales`

### Usage

Ideal for line or bar charts showing sales trends and growth rates.

{% enddocs %}
