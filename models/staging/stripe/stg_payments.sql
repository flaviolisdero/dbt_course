{{ config 
    (
    materialized="table",
    target_schema="dbt_lisdero")
}}

select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents, convert it to dollars
    amount as old_amount,
    {{ cents_to_dollars('amount', 4) }} as amount,
    created as created_at
from {{ source('stripe','payment') }}