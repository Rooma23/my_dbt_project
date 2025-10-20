{% docs int_dim_stores %}

# Documentation – Local Bike Intermediate Layer

## Overview

The models in the **models/intermediate/Local_Bike** layer represent the **analytical view** of the Local Bike business.  
They transform the cleaned data from the `staging` models into **dimension** and **fact** tables, ready to be used in the **models/mart/Local_Bike** layer.

The goal of this layer is to provide a **reliable, documented, and actionable** data foundation for analyzing the dimensions and facts tables.

---

## `int_dim_stores`

### Description

Dimension table describing the Local Bike stores and their locations.

### Key Fields

| Column       | Type    | Description             |
| ------------ | ------- | ----------------------- |
| `store_id`   | Integer | Unique store identifier |
| `store_name` | String  | Store name              |
| `city`       | String  | Store city              |
| `state`      | String  | State                   |
| `zip_code`   | String  | Postal code             |

### Source

From `stg_stores` (based on `stores.csv`).

### Typical Use Cases

- Compare store performance
- Analyze revenue by region or city
- Track store growth and market penetration

{% enddocs %}
