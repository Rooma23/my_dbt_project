{% docs int_fact_sales %}

# Documentation – Local Bike Intermediate Layer

## Overview

The models in the **models/intermediate/Local_Bike** layer represent the **analytical view** of the Local Bike business.  
They transform the cleaned data from the `staging` models into **dimension** and **fact** tables, ready to be used in the **models/mart/Local_Bike** layer.

The goal of this layer is to provide a **reliable, documented, and actionable** data foundation for analyzing the dimensions and facts tables.

---

## `int_fact_sales`

### Description

Central **fact table** consolidating all sales transactions, linking orders, products, customers, stores, and staff.

### Key Fields

| Column            | Type    | Description                     |
| ----------------- | ------- | ------------------------------- |
| `order_id`        | Integer | Unique order identifier         |
| `order_date`      | Date    | Order date                      |
| `customer_id`     | Integer | Linked customer                 |
| `store_id`        | Integer | Store where sale occurred       |
| `staff_id`        | Integer | Staff associated with the order |
| `product_id`      | Integer | Product sold                    |
| `quantity`        | Integer | Quantity sold                   |
| `list_price`      | Decimal | Unit price before discount      |
| `discount`        | Decimal | Discount rate applied           |
| `net_sales`       | Decimal | Net sales amount after discount |
| `discount_amount` | Decimal | Total discount value            |

### Source

Join between:

- `stg_orders`
- `stg_order_items`
- `stg_products`
- (indirectly) `stg_customers`, `stg_stores`, `stg_staffs`

### Typical Use Cases

- Calculate total and net revenue
- Analyze sales by period, store, staff, or product
- Track discounts, margins, and performance KPIs
- Power BI / Tableau data source for dashboards

{% enddocs %}
