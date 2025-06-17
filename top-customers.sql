-- Top 3 customers by total spend
SELECT TOP 3 CustomerID, SUM(Quantity * UnitPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
