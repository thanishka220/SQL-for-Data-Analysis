-- 1. Total Orders by Country
SELECT Country, COUNT(*) AS TotalOrders
FROM EcommerceData
GROUP BY Country
ORDER BY TotalOrders DESC;

-- 2. Total Revenue by Country
SELECT Country, SUM(UnitPrice * Quantity) AS Revenue
FROM EcommerceData
GROUP BY Country
ORDER BY Revenue DESC;

-- 3. Top 5 Products by Revenue
SELECT Description, SUM(UnitPrice * Quantity) AS Revenue
FROM EcommerceData
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 5;

-- 4. Orders with High Quantity (>50)
SELECT *
FROM EcommerceData
WHERE Quantity > 50
ORDER BY Quantity DESC;

-- 5. Subquery: Countries with Above-Average Revenue
SELECT Country, SUM(UnitPrice * Quantity) AS Revenue
FROM EcommerceData
GROUP BY Country
HAVING Revenue > (
    SELECT AVG(UnitPrice * Quantity)
    FROM EcommerceData
);

-- 6. creating view Country Revenue
CREATE VIEW CountryRevenue AS
SELECT Country, SUM(UnitPrice * Quantity) AS Revenue
FROM EcommerceData
GROUP BY Country;

-- 7. Self Join on InvoiceNo (Join Example)
SELECT A.InvoiceNo, A.Description, B.Description AS MatchingProduct
FROM EcommerceData A
JOIN EcommerceData B
ON A.InvoiceNo = B.InvoiceNo
WHERE A.Description != B.Description
LIMIT 10;
