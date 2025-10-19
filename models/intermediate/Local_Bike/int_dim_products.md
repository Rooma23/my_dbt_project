{% docs int_dim_products %}

# Documentation – Local Bike Intermediate Layer

## Overview

The models in the **models/intermediate/Local_Bike** layer represent the **analytical view** of the Local Bike business.  
They transform the cleaned data from the `staging` models into **dimension** and **fact** tables, ready to be used in the **models/mart/Local_Bike** layer.

The goal of this layer is to provide a **reliable, documented, and actionable** data foundation for analyzing the dimensions and facts tables.

---

## `int_dim_products`

### Description

Dimension table containing the product catalog enriched with brand and category details.

### Key Fields

| Column          | Type    | Description                                          |
| --------------- | ------- | ---------------------------------------------------- |
| `product_id`    | Integer | Unique product identifier                            |
| `product_name`  | String  | Product name                                         |
| `brand_name`    | String  | Product brand                                        |
| `category_name` | String  | Product category (road, mountain, accessories, etc.) |
| `model_year`    | Integer | Model year                                           |
| `list_price`    | Decimal | Product list price                                   |

### Source

Join between `stg_products`, `stg_brands`, and `stg_categories`.

### Typical Use Cases

- Sales analysis by product, brand, or category
- Identify top-performing or low-performing products
- Product segmentation by price range

{% enddocs %}