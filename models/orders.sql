-- orders.sql
{{ config(materialized='table') }}

WITH orders AS (
    SELECT 
        1 AS order_id,
        1 AS customer_id,
        '2022-01-01' AS order_date,
        100.00 AS order_amount
    UNION ALL
    SELECT 
        2 AS order_id,
        2 AS customer_id,
        '2022-01-02' AS order_date,
        200.00 AS order_amount
    UNION ALL
    SELECT 
        3 AS order_id,
        NULL AS customer_id, -- Unknown customer
        '2022-01-03' AS order_date,
        300.00 AS order_amount
)

SELECT * FROM orders