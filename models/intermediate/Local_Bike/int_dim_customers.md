{% docs int_dim_customers %}

# Documentation – Local Bike Intermediate Layer

## Overview

The models in the **models/intermediate/Local_Bike** layer represent the **analytical view** of the Local Bike business.  
They transform the cleaned data from the `staging` models into **dimension** and **fact** tables, ready to be used in the **models/mart/Local_Bike** layer.

The goal of this layer is to provide a **reliable, documented, and actionable** data foundation for analyzing the dimensions and facts tables.

---

## `int_dim_customers`

### Description

Dimension table containing customer information used for marketing, RFM, and sales analysis.

### Key Fields

| Column        | Type    | Description                                      |
| ------------- | ------- | ------------------------------------------------ |
| `customer_id` | Integer | Unique identifier for each customer              |
| `full_name`   | String  | Full name (concatenation of first and last name) |
| `email`       | String  | Customer email address                           |
| `phone`       | String  | Customer phone number                            |
| `city`        | String  | City of residence                                |
| `state`       | String  | State of residence                               |
| `zip_code`    | String  | ZIP/postal code                                  |

### Source

Data from `stg_customers` (based on `customers.csv`).

### Typical Use Cases

- Identify customer segments (by geography or frequency)
- Analyze geographical distribution of sales
- Build RFM (Recency, Frequency, Monetary) models

{% enddocs %}