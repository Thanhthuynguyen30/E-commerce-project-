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
SQL queries: [Data exploration.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/d26f30c4f1c4dab6dbbaff27de94f9e7c03d8adb/Data%20exploration.sql)

Observation:
  - The table below shows all column names and their data types:
    
 <img width="387" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/f1663b26-c83a-467b-8de8-5c396cfa7ce2">
 
  - Size of Dataset: The dataset contains 541,909 rows (transactions) and 8 columns (attributes).
  - Number of null values in each column:<img width="1073" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/560d75d1-de1e-46fb-9b34-a8b75556a781">
  - Unique values of the dataset:<img width="1061" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/301425f0-ce25-474d-8e42-1ae2dd9a7520">
 
## 3.2 Data cleaning 
SQL queries: [Data cleaning.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/84f05202c7637ba44f43413bea368ed262e5709e/Data%20cleaning.sql)

# 4. Analyze data 
SQL queries: [Data analysis.sql](https://github.com/Thanhthuynguyen30/E-commerce-project-/blob/9af48b67e53cb6beb94eadd4199af510c019f999/Data%20analysis.sql)

Data visualisation: [Tableau](https://public.tableau.com/app/profile/thanh.thuy.nguyen/viz/E-commerceBusinessProject/Dashboard1)

Observations:
1. Revenue 
- The total revenue value in the researched period is approximately £10563748.57, specifically 2010 revenue is £807724.55 and 2011 revenue is £9756024.024.
- The two products that sold with highest quantity are PAPER CRAFT,LITTLE BIRDIE and MEDIUM CERAMIC TOP STORAGE JAR (80995 and 74215 pieces sold, respectively)
- Top 5 products with highest sales:
  <img width="1136" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/2c0489b9-d2e0-4af4-b94b-ee3e911e0999">
2. Customer Behavior
- There are some important customer that purchased frequently such as customer 14911 or 12748. However, the most valuable customer is 14646 with only 45 days visiting the shop but £280206 worth payment.
- Customer Retention Rate:
  - The result shows that the retention rate is 0%. I went through all the numbers to find the problem and figured out that the "Number of Customers at the End of the Period" and the "Number of New Customers Acquired" is similar (=4337). This may indicate that the business is in a state of flux or experiencing a situation where new customer acquisition and customer churn are roughly balanced.
  - Here are a few possible interpretations of a 0% retention rate in this scenario:
​
    - High Churn Rate: It suggests that as many new customers are acquired, an equal number of existing customers are churning or leaving the business. This could be a sign of a high churn rate, which is a concern because it means that the business is losing customers as quickly as it's acquiring new ones.
​
    - Stagnation: The business may be in a state of stagnation or equilibrium, where the number of new customers acquired is essentially replacing those who are churning. This could indicate that the business is not experiencing growth in its customer base but is also not losing customers rapidly.
​
    - Short-Term Fluctuation: It's possible that this situation is a short-term fluctuation and does not reflect the long-term health of the business. Businesses may go through periods of customer turnover, and this specific time frame might capture such fluctuations.
  - To draw meaningful insights, it's essential to consider the context and analyze trends over multiple periods. A single period with a 0% retention rate may not necessarily indicate a problem, but it should prompt further investigation and analysis of customer acquisition and churn patterns to understand the underlying dynamics.*
3. Seasonal Trends
- It could be understood that Spring is from March to May, Summer is from June to Aug, Fall is from Sep to Nov, and Winter is the rest of the year. 
- Revenue during each season and month: <img width="1210" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/8f8ec3a4-b45e-4e17-8d08-f88f10b28729">

- The analysis of revenue data reveals a consistent upward trend during the Fall-Winter season, with the peak occurring in November. This observed increase in revenue during the Fall-Winter months suggests a positive correlation with the holiday season, particularly the Christmas and New Year period. The notable surge in sales during November may be attributed to customers preparing for these holidays, possibly purchasing gifts for friends and family.

- This insight implies that the company experiences heightened demand for its products, especially those suitable for gifting, as customers engage in holiday shopping. The company  can leverage this information to tailor marketing strategies, optimize inventory levels for popular products, and capitalize on the festive season to maximize sales opportunities.
4. Geographical Analysis
- It can be seen that United Kingdom is the primary market for the business, having the highest number of customers and revenue throughout the reserached period.
- Top 10 popular products during the busiest season (Fall-Winter) in the United Kingdom:
<img width="931" alt="image" src="https://github.com/Thanhthuynguyen30/E-commerce-project-/assets/149237392/5a8fb221-1a59-49f3-bf35-df014466e848">
  - These products may have features or designs that align with seasonal trends or are particularly appealing to customers during the August to December period. For example, items related to Christmas (e.g., PAPER CHAIN KIT 50'S CHRISTMAS) might experience increased demand during the holiday season. Some of the products, such as PAPER CRAFT, LITTLE BIRDIE, and ASSORTED COLOUR BIRD ORNAMENT, could be popular choices as gifts. Customers may be purchasing these items for holiday gifts, contributing to higher sales. Certain products, like DOTCOM POSTAGE or METAL SIGN TAKE IT OR LEAVE IT, might be related to special events or promotions during this period, leading to increased popularity.
  - Knowing this information can help in optimizing inventory, planning marketing campaigns, and tailoring product offerings to meet customer demand during peak periods. However, if I can have access to additional data, I can explore more about customer, and the effectiveness of marketing initiatives to gain deeper insights.

5. Pricing Strategy

