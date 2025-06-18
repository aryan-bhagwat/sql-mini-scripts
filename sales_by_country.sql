-- Total revenue by country (sorted highest to lowest)

SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalRevenue
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
GROUP BY Country
ORDER BY TotalRevenue DESC;
