-- customers.sql
{{ config(materialized='table') }}

WITH customers AS (
    SELECT 
        1 AS customer_id,
        'John Doe' AS customer_name,
        'john.doe@example.com' AS customer_email,
        '123 Main St' AS customer_address,
        'New York' AS customer_city,
        'NY' AS customer_state,
        '10001' AS customer_zip
    UNION ALL
    SELECT 
        2 AS customer_id,
        'Jane Smith' AS customer_name,
        'jane.smith@example.com' AS customer_email,
        '456 Elm St' AS customer_address,
        'Los Angeles' AS customer_city,
        'CA' AS customer_state,
        '90001' AS customer_zip
)

SELECT * FROM customers