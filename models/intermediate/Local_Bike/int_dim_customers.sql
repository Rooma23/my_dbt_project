with customers as (
    select
        customer_id,
        initcap(first_name) || ' ' || initcap(last_name) as full_name,
        email,
        phone,
        city,
        state,
        zip_code
    from {{ ref('stg_customers') }}
)
select * from customers
