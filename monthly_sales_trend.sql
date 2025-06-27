-- Script: Monthly sales trend by year

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(sales), 2) AS total_sales
FROM
    orders
GROUP BY
    month
ORDER BY
    month;
