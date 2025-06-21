-- Fetch orders with quantity greater than 100

SELECT
    order_id,
    customer_id,
    product_id,
    quantity,
    order_date
FROM
    orders
WHERE
    quantity > 100
ORDER BY
    quantity DESC;
