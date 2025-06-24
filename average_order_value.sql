-- Script: Calculate average order value

SELECT
    customer_id,
    ROUND(SUM(sales) / COUNT(order_id), 2) AS avg_order_value
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    avg_order_value DESC;
