-- Script: Find products with quantity less than 10 (low stock alert)

SELECT
    product_id,
    product_name,
    quantity
FROM
    inventory
WHERE
    quantity < 10
ORDER BY
    quantity ASC;
