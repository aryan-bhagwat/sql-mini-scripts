-- Script: Find High-Value Orders (over 500 currency units)
SELECT o.order_id, c.customer_name,
       SUM(oi.quantity * oi.unit_price) AS order_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, c.customer_name
HAVING SUM(oi.quantity * oi.unit_price) > 500
ORDER BY order_total DESC;
