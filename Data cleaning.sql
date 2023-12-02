## Checking rows with missing 'Description'
  
SELECT *
FROM `EcommerceProjectPractice.sales`
WHERE Description is null;

-- We can see that the rows with missing Descriptions have also a missing customerID, another issue is that the UnitPrice is 0.0 which is incorrect.
## Checking rows with missing 'Description', 'Customer ID' and 'UnitPrice' = 0
  
SELECT Count(*)
FROM `EcommerceProjectPractice.sales`
WHERE Description is null
and CustomerID is null
and UnitPrice = 0.0;

## Delete rows without Descriptions, CustomerID and with 0.0 UnitPrice

DELETE 
FROM `EcommerceProjectPractice.sales`
WHERE Description is null
and CustomerID is null
and UnitPrice = 0.0;

-- Quantity and UnitPrice should be values more than 0. 
## Delete rows without Quantity OR UnitPrice more than 0
  
DELETE 
FROM `EcommerceProjectPractice.sales`
WHERE Quantity <= 0 OR UnitPrice <= 0;

-- Stockcode and Description should be unique and simultanouesly connected to each other. 
## Checking if each stock code has only one associated description. 

SELECT COUNT (DISTINCT StockCode) as Distinct_StockCode, 
       COUNT (DISTINCT Description) as Distinct_Description
FROM `EcommerceProjectPractice.sales`;

-- There are less distinct StockCode than distinct Description (3922 < 4026). 

-- There are some 'Description' data that are not written in uppercase, which is opposite to how to describe a product name. 
## Checking 'Description' that are not written in uppercase
  
SELECT DISTINCT(Description)
FROM `EcommerceProjectPractice.sales`
WHERE Description != UPPER(Description);

-- As can be seen in 32 results, there are some 'Description' need to be removed as it doesnt describe Product: 'Manual', 'Adjust bad debt', 'Bank charges'
## Delete rows where 'Description' does not describe Product

DELETE 
FROM `EcommerceProjectPractice.sales`
WHERE Description IN ( 'Manual', 'Adjust bad debt','Bank charges' )






