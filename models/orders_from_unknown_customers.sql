-- orders_from_unknown_customers.sql
{{ config(materialized='table') }}

SELECT o.*
FROM {{ ref('orders') }} o
LEFT JOIN {{ ref('customers') }} c ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL