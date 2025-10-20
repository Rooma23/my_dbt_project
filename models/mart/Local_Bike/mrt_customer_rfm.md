{% docs mrt_customer_rfm %}

# Local Bike – Mart Layer Documentation

## This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.

## Customer RFM (`mrt_customer_rfm.sql`)

### Description

Builds the RFM (Recency, Frequency, Monetary) base table to analyze customer loyalty and behavior.

### Metrics Calculated

| Metric           | Description              |
| ---------------- | ------------------------ |
| `recency_days`   | Days since last order    |
| `frequency`      | Number of orders placed  |
| `monetary_value` | Total value of purchases |

### Source Models

- `fact_sales`
- `dim_customers`

### Usage

Useful for segmentation dashboards, cohort analysis, or customer retention studies.

{% enddocs %}
