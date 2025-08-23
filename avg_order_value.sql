-- Script: Calculate Average Order Value (AOV)
SELECT o.order_id, ROUND(SUM(oi.quantity * oi.unit_price), 2) AS order_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

-- Overall average order value
SELECT ROUND(AVG(order_total), 2) AS avg_order_value
FROM (
    SELECT o.order_id, SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
) sub;
