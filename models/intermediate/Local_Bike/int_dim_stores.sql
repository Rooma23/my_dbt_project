with stores as (
    select
        store_id,
        store_name,
        city,
        state,
        zip_code
    from {{ ref('stg_stores') }}
)
select * from stores
