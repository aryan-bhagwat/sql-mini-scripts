-- Script: Average order value by customer
SELECT customer_id, AVG(order_total) AS avg_order_value
FROM orders
GROUP BY customer_id
ORDER BY avg_order_value DESC;
