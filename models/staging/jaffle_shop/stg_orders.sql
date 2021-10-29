{{ config 
    (
    materialized="table",
    target_schema="dbt_lisdero")
}}

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from sandbox.dbt_course_jaffle_shop.orders