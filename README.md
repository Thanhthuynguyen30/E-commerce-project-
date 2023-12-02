# 1. ASK 
- Sales Analysis:

  - What is the total revenue over a specific time period?
  - Which products have the highest sales?
  - What are the top-selling products by quantity and revenue?
  - What is the average order value (AOV)?

- Customer Behavior:

  - How frequently do customers make purchases?
  - Who are the most valuable customers in terms of revenue?
  - What is the customer retention rate?

- Seasonal Trends:

  - Are there seasonal patterns in sales data?
  - What are the peak buying periods throughout the year?

- Geographical Analysis:

  - Which countries have the most customers?
  - What are the sales trends in different countries?

- Pricing Strategy:

  - How do different products' prices correlate with sales volume?
  - Are there any pricing strategies that lead to increased sales?

- Time Analysis:

  - What are the busiest hours or days for transactions?
  - Are there specific time periods when high-value transactions are more likely?
# 3. PROCESS 
## 3.1. Data exploration
- SQL queries: [Data exploration.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/d26f30c4f1c4dab6dbbaff27de94f9e7c03d8adb/Data%20exploration.sql)
- Observation:
  - The table below shows all column names and their data types. 

    > Note: Customer ID Type: The 'CustomerID' column is stored as float numbers, which seems weird to identify customers.
  - Size of Dataset: The dataset contains 541,909 rows (transactions) and 8 columns (attributes).
  - Number of null values in each column.
    > Note: Missing Customer IDs: There are missing values in the 'CustomerID' field, which is unexpected. Every transaction should ideally have a customer ID associated with it.
## 3.2 Data cleaning 
- SQL queries: 


