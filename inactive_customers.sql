-- Script: Find customers with no orders in the last 6 months
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM orders
    WHERE order_date >= DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH)
);
