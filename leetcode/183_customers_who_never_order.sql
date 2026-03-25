-- solution using JOIN and filter
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;

-- solution using NOT IN
SELECT name AS Customers
FROM Customers
WHERE id NOT IN (SELECT customerId FROM Orders);

-- solution using NOT EXISTS
SELECT name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE c.id = o.customerId
);
