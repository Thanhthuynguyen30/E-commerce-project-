## Revenue in total  
  
SELECT sum(Quantity * UnitPrice) AS Total_Revenue
FROM `EcommerceProjectPractice.sales`;

## Annual revenue
  
SELECT EXTRACT(YEAR FROM InvoiceDate) AS Year,
       sum(Quantity * UnitPrice) AS Annual_Revenue
FROM`EcommerceProjectPractice.sales`
GROUP BY 1;

## Revenue by country 
  
SELECT Country,
       sum(Quantity * UnitPrice) AS Revenue_by_country
FROM`EcommerceProjectPractice.sales`
GROUP BY 1;

## AOV 

WITH OrderValue AS (
  SELECT InvoiceNo, SUM(UnitPrice * Quantity) AS OrderValue
  FROM `EcommerceProjectPractice.sales`
  GROUP BY InvoiceNo
)
SELECT AVG(OrderValue.OrderValue) AS AOV
FROM OrderValue;


## Products sold with the highest quantity 
  
SELECT Stockcode, Description, Quantity
FROM`EcommerceProjectPractice.sales`
Group by Stockcode, Description, Quantity
ORDER BY 3 desc
Limit 5;

## Products with highest sale 
  
SELECT Stockcode, Description, Sum(Quantity*UnitPrice)
FROM`EcommerceProjectPractice.sales`
GROUP BY Stockcode, Description
ORDER BY 3 desc
Limit 5;

## How frequently do customers make purchases
  
SELECT CustomerID, COUNT(DISTINCT DATE(InvoiceDate)) AS DaysVisited
FROM `EcommerceProjectPractice.sales`
WHERE CustomerID is not null 
GROUP BY CustomerID
ORDER By 2 desc ;

## Most valuable customer in terms of revenue

SELECT CustomerID, Sum(Quantity*UnitPrice) Revenue
FROM`EcommerceProjectPractice.sales`
WHERE CustomerID is not null 
GROUP BY CustomerID
ORDER BY 2 desc
Limit 5;

## Customer rention rate 
  -- Customer retention rate is a measure of how many customers continue to do business with a company over a specific time period. To calculate the customer retention rate, I use the following formula: Customer Retention Rate (%) = [(E - N) / S] x 100
Where:
E represents the number of customers at the end of a period.
N represents the number of new customers acquired during that period.
S represents the number of customers at the start of the period 

  
WITH CustomerCounts AS (
  SELECT
      (SELECT COUNT(DISTINCT CustomerID) 
       FROM `EcommerceProjectPractice.sales` 
       WHERE InvoiceDate >= '2010-12-01' AND CustomerID IS NOT NULL) 
       AS S,
      (SELECT COUNT(DISTINCT CustomerID) 
       FROM `EcommerceProjectPractice.sales` 
       WHERE InvoiceDate >= '2010-12-01' AND InvoiceDate <= '2011-12-09' AND CustomerID IS NOT NULL) 
       AS E,
      (SELECT COUNT(DISTINCT CustomerID) 
       FROM `EcommerceProjectPractice.sales` 
       WHERE InvoiceDate >= '2010-12-01' AND InvoiceDate <= '2011-12-09' AND CustomerID IS NOT NULL 
       AND CustomerID NOT IN (
                              SELECT DISTINCT CustomerID 
                              FROM `EcommerceProjectPractice.sales` 
                              WHERE InvoiceDate < '2010-12-01' AND CustomerID IS NOT NULL)) 
       AS N
)
SELECT
  ((E - N) * 100 / S) AS CustomerRetentionRate
FROM CustomerCounts;

## Revenue each season

SELECT
  CASE
    WHEN EXTRACT(MONTH FROM InvoiceDate) BETWEEN 3 AND 5 THEN 'Spring'
    WHEN EXTRACT(MONTH FROM InvoiceDate) BETWEEN 6 AND 8 THEN 'Summer'
    WHEN EXTRACT(MONTH FROM InvoiceDate) BETWEEN 9 AND 11 THEN 'Fall'
    ELSE 'Winter'
  END AS Season,
  SUM(UnitPrice * Quantity) AS TotalRevenue
FROM
  `EcommerceProjectPractice.sales`
GROUP BY
  Season;

## Revenue each month
  
SELECT
  EXTRACT(MONTH FROM InvoiceDate) AS Month,
  SUM(UnitPrice * Quantity) AS TotalRevenue
FROM
  `EcommerceProjectPractice.sales`
GROUP BY
  Month
ORDER BY
  Month;

## Countries having most customers

SELECT Country, COUNT(CustomerID) AS NumberOfCustomers
FROM `EcommerceProjectPractice.sales`
WHERE CustomerID is not null
GROUP BY  Country
ORDER BY  2 DESC
LIMIT 5;

## Countries having highest revenue during the researched period

SELECT Country, Sum(UnitPrice*Quantity) AS Revenue
FROM `EcommerceProjectPractice.sales`
WHERE CustomerID is not null
GROUP BY  Country
ORDER BY  2 DESC
LIMIT 5;

## Popular products during the busiest season in United Kingdom (August - December)
--It seems like 'AMAZON FEE' is one of the most popular product with high revenue in during the busiest season in the UK, however, the business sold unique-occasional gifts. Hence, 'AMAZON FEE' should be eliminated from the result (2 rows are removed)

DELETE 
FROM `EcommerceProjectPractice.sales` 
WHERE Description = 'AMAZON FEE';

Select Description, 
       Quantity*UnitPrice As Revenue,
       EXTRACT (MONTH FROM InvoiceDate) AS SalesMonth
FROM `EcommerceProjectPractice.sales` 
WHERE EXTRACT(MONTH FROM InvoiceDate) BETWEEN 8 AND 12 
      AND Country = 'United Kingdom'
ORDER By 2 desc
LIMIT 10;

## Correlation Analysis
> Hypothesis: Different products' prices correlate with sales volume
> Calculate the correlation coefficient between UnitPrice and Quantity for each product.

WITH CR AS (
    SELECT
        UnitPrice, Quantity 
    FROM
        `EcommerceProjectPractice.sales`
)
SELECT 
    CORR(UnitPrice, Quantity) AS CorrelationCoefficient
FROM CR;


## Busiest Hours

SELECT
    EXTRACT(HOUR FROM InvoiceDate) AS hour_of_day,
    COUNT(*) AS transaction_count
FROM
    `EcommerceProjectPractice.sales`
GROUP BY
    hour_of_day
ORDER BY
    transaction_count DESC
LIMIT 5;

## Busiest Days
  
SELECT
  DATE(InvoiceDate) AS transaction_day,
  COUNT(*) AS transaction_count
FROM
  `EcommerceProjectPractice.sales`
GROUP BY
  transaction_day
ORDER BY
  transaction_count DESC
LIMIT 5;

## Specific time periods when high-value transactions are more likely

WITH InvoiceInfo AS (
    SELECT  
        InvoiceNo, 
        SUM(UnitPrice * Quantity) AS InvoiceValue, 
        EXTRACT(HOUR FROM InvoiceDate) AS InvoiceHour 
    FROM `EcommerceProjectPractice.sales` 
    GROUP BY InvoiceNo, InvoiceHour
    ORDER BY 2 DESC
    LIMIT 100
)
SELECT InvoiceHour, COUNT(*) As Occurrences
FROM InvoiceInfo 
GROUP BY InvoiceHour
ORDER BY 2 DESC
