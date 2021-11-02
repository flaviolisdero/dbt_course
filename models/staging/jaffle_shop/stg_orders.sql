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

from {{ source('jaffle_shop','orders')}}