{{ config 
    (
    materialized="table",
    target_schema="dbt_lisdero")
}}

select
    id as customer_id,
    first_name,
    last_name

from {{ source('jaffle_shop','customers')}}