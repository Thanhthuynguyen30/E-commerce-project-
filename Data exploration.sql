## Number of null values in each collumn 

SELECT COUNT(*) - COUNT(InvoiceNo) InvoiceNo,
 COUNT(*) - COUNT(StockCode) StockCode ,
 COUNT(*) - COUNT(Description) Description ,
 COUNT(*) - COUNT(Quantity) Quantity,
 COUNT(*) - COUNT(InvoiceDate) InvoiceDate ,
 COUNT(*) - COUNT(UnitPrice) UnitPrice ,
 COUNT(*) - COUNT(CustomerID) CustomerID ,
 COUNT(*) - COUNT(Country) Country,

FROM `EcommerceProjectPractice.sales` ;

## Checking for the unique values

SELECT COUNT(DISTINCT InvoiceNo) InvoiceNo,
       COUNT(DISTINCT StockCode) StockCode,
       COUNT(DISTINCT Description) Description,
       COUNT(DISTINCT Quantity) Quantity,
       COUNT(DISTINCT InvoiceDate) InvoiceDate,
       COUNT(DISTINCT UnitPrice) UnitPrice,
       COUNT(DISTINCT CustomerID) CustomerID,
       COUNT(DISTINCT Country) Country
FROM `EcommerceProjectPractice.sales`;
