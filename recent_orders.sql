-- Get 5 most recent orders placed

SELECT TOP 5 
    InvoiceNo,
    InvoiceDate,
    CustomerID,
    Country,
    Quantity * UnitPrice AS OrderValue
FROM Orders
WHERE Quantity > 0 AND UnitPrice > 0
ORDER BY InvoiceDate DESC;
