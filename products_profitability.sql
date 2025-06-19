-- Find top 5 most profitable products

SELECT 
    ProductID,
    ROUND(SUM(Profit), 2) AS TotalProfit
FROM Orders
GROUP BY ProductID
ORDER BY TotalProfit DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
