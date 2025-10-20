{% docs mrt_staff_performance %}

# Local Bike – Mart Layer Documentation

This documentation describes the purpose, logic, and usage of each SQL query used to build Local Bike’s business dashboards that can be represented in Power BI, Metabase, Tableau or other BI tools.
---

## Staff Performance (`mrt_staff_performance.sql`)

### Description
Measures the sales and productivity of each staff member.

### Metrics Calculated
| Metric | Description |
|---------|-------------|
| `staff_name` | Employee name |
| `store_name` | Associated store |
| `order_count` | Number of orders handled |
| `total_sales` | Total sales amount handled |
| `avg_order_value` | Average order value per staff |

### Source Models
- `fact_sales`
- `dim_staffs`

### Usage
Used to rank staff performance in dashboards or to identify training needs.

{% enddocs %}