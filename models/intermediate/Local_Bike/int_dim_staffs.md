{% docs int_dim_staffs %}

# Documentation – Local Bike Intermediate Layer

## Overview

The models in the **models/intermediate/Local_Bike** layer represent the **analytical view** of the Local Bike business.  
They transform the cleaned data from the `staging` models into **dimension** and **fact** tables, ready to be used in the **models/mart/Local_Bike** layer.

The goal of this layer is to provide a **reliable, documented, and actionable** data foundation for analyzing the dimensions and facts tables.

---


## `int_dim_staffs`

### Description

Dimension table containing employee (staff) details, including their assigned store.

### Key Fields

| Column       | Type    | Description             |
| ------------ | ------- | ----------------------- |
| `staff_id`   | Integer | Unique staff identifier |
| `staff_name` | String  | Full name               |
| `email`      | String  | Email address           |
| `phone`      | String  | Phone number            |
| `is_active`  | Boolean | Employment status       |
| `store_name` | String  | Associated store name   |

### Source

Join between `stg_staffs` and `stg_stores`.

### Typical Use Cases

- Monitor sales performance per employee
- Analyze team productivity
- Identify top-performing sales staff

{% enddocs %}