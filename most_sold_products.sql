-- Script: Most sold products by quantity
SELECT p.product_id, p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM order_items o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;
