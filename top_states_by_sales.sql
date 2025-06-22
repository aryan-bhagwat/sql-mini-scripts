-- Script: Top 5 states by total sales

SELECT
    state,
    SUM(sales) AS total_sales
FROM
    orders
GROUP BY
    state
ORDER BY
    total_sales DESC
LIMIT 5;
