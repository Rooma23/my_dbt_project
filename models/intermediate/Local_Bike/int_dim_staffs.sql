with staffs as (
    select
        s.staff_id,
        initcap(s.first_name) || ' ' || initcap(s.last_name) as staff_name,
        s.email,
        s.phone,
        s.is_active,
        st.store_name
    from {{ ref('stg_staffs') }} s
    left join {{ ref('stg_stores') }} st on s.store_id = st.store_id
)
select * from staffs
