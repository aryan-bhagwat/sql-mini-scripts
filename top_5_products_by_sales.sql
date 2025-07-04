-- Script: Top 5 products by total sales revenue
SELECT p.product_id, p.product_name, SUM(o.quantity * o.unit_price) AS total_revenue
FROM order_items o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 5;
