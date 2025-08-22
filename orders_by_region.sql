-- Script: Count orders by region
SELECT r.region_name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN regions r ON c.region_id = r.region_id
GROUP BY r.region_name
ORDER BY total_orders DESC;

