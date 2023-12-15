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
# 2. PREPARE

## 2.1. Dataset

- I would use [E-commerce dataset.csv](https://www.kaggle.com/datasets/aliessamali/ecommerce/) on Kaggle to analyze and answer the questions.
- The dataset contains all the transactions occurring between 01/12/2010 and 09/12/2011 for a UK-based and registered non-store online retail. The company mainly sells unique all-occasion gifts. Many customers of the company are wholesalers.
- The dataset is lisenced under Attribution 4.0 International (CC BY 4.0 DEED)

## 2.2. Tool

- Bigquery is used to analyzing the dataset because the dataset includes 541909 rows in total, BigQuery can provide a huge support to deal with a large volume of data

# 3. PROCESS 
## 3.1. Data exploration
- SQL queries: [Data exploration.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/d26f30c4f1c4dab6dbbaff27de94f9e7c03d8adb/Data%20exploration.sql)
- Observation:
  - The table below shows all column names and their data types:
<img width="387" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/f1663b26-c83a-467b-8de8-5c396cfa7ce2">
  - Size of Dataset: The dataset contains 541,909 rows (transactions) and 8 columns (attributes).
  - Number of null values in each column:
<img width="1073" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/560d75d1-de1e-46fb-9b34-a8b75556a781">
  - Unique values of the dataset:
 <img width="1061" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/301425f0-ce25-474d-8e42-1ae2dd9a7520">

## 3.2 Data cleaning 
- SQL queries: [Data cleaning.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/84f05202c7637ba44f43413bea368ed262e5709e/Data%20cleaning.sql)
# 4. Analyze data 
- SQL queries: [Data analysis.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/9af48b67e53cb6beb94eadd4199af510c019f999/Data%20analysis.sql)
- Data visualisation: [Tableau](https://public.tableau.com/app/profile/thanh.thuy.nguyen/viz/E-commerceBusinessProject/Dashboard1)
- 
