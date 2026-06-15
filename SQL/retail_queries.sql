-- Total Revenue
SELECT SUM(tran_amount) AS TotalRevenue
FROM Transactions;

-- Top Customers
SELECT customer_id,
       SUM(tran_amount) AS Revenue
FROM Transactions
GROUP BY customer_id
ORDER BY Revenue DESC
LIMIT 10;

-- Monthly Revenue
SELECT MONTH(trans_date) AS Month,
       SUM(tran_amount) AS Revenue
FROM Transactions
GROUP BY MONTH(trans_date);

-- Yearly Revenue
SELECT YEAR(trans_date) AS Year,
       SUM(tran_amount) AS Revenue
FROM Transactions
GROUP BY YEAR(trans_date);