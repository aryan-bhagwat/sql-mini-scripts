-- Script: Customers who returned more than 2 products
SELECT customer_id, COUNT(return_id) AS return_count
FROM returns
GROUP BY customer_id
HAVING COUNT(return_id) > 2;
