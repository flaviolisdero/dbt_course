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
    amount / 100 as amount,
    created as created_at

from sandbox.dbt_course_stripe.payment 