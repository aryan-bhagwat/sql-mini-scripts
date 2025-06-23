-- Script: Top 5 customers by total spend

SELECT
    customer_id,
    SUM(sales) AS total_spend
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    total_spend DESC
LIMIT 5;
