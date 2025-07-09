-- Script: Calculate customer lifetime value (CLV)

SELECT customer_id, SUM(order_total) AS lifetime_value
FROM orders
GROUP BY customer_id
ORDER BY lifetime_value DESC;
