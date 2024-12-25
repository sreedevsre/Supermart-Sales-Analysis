# Supermart-Sales-Analysis
This project involves the analysis of retail sales data using SQL for data preparation and the creation of an interactive Power BI dashboard to uncover valuable insights. The dashboard helps in identifying trends, customer behavior, and product performance to improve strategic decision-making.



## About data
The dataset was obtained from the [Kaggle Super Market Sales](https://www.kaggle.com/datasets/arunjangir245/super-market-sales)..

## Key Features
- Feature Engineering:

Created new attributes such as time-period classifications and transaction segmentations based on ratings and customer membership.
Derived metrics like revenue contributions, tax collected, and average spending.
- Dynamic Visualizations:

Designed bar charts, pie charts, scatter plots, slicers, and KPI cards for a comprehensive view of business performance.

- Actionable Insights:

Identified customer spending patterns and high-performing product lines.
Highlighted peak transaction periods and top revenue-generating branches.

## Technologies Used
SQL: For data cleaning, feature engineering, and metric calculation.

Power BI: For creating an interactive and visually appealing dashboard.


## Data Analysis Steps
- Data Preparation:

Cleaned and structured the dataset.
Used SQL queries to calculate metrics and derive insights.

- Feature Engineering:

Categorized transactions by time periods (morning, afternoon, evening, night).
Segmented customers by membership type and spending behavior.

- Visualization Design:

Selected visuals best suited for key metrics and trends.
Enhanced interactivity with slicers and filters.

## Approach Used

1. **Data Wrangling:** This is the first step where inspection of data is done to make sure `NULL` values and missing values are detected and data replacement methods are used to replace, missing or `NULL` values.
   1. Build a database
   2. Create table and insert the data.
   3. Select columns with null values in them. There are no null values in our database as in creating the tables, we set `NOT NULL` for each field, hence null values are filtered out.

2. **Feature Engineering:** This will help us generate some new columns from existing ones.
   1. Add a new column named `time_of_day` to give insight of sales in the Morning, Afternoon and Evening. This will help answer the question on which part of the day most sales are made.
   2. Created a top_product_line feature to rank product lines by revenue contribution, helping identify the most profitable categories.
   3. Engineered a payment_preference feature to identify the most frequently used payment methods for targeted promotions
  


3. **Exploratory Data Analysis (EDA):** Exploratory data analysis is done to answer the listed questions and aims of this project.

4. **Conclusion:**

## Questions To Answer

1. --  List all cities where transactions occurred.
2. -- Find the average customer rating for each product line.
3. -- Identify the payment method used most frequently.
4. -- Customer Spending Patterns Based on Member Status
5. -- Get the total tax collected in each city.
6. -- Revenue Contribution of Different Payment Methods
7. -- Find the top 3 highest-rated transactions
8. -- Calculate the total and average sales for transactions with ratings above 8
9. -- Sales Performance by Category and City
10. --  Find the top 3 product lines by total revenue
11. -- Get the average unit price for each product line.
12. -- Find the transaction with the highest rating
13. -- Calculate the total cost of goods sold for each payment method.
14. -- Find the date with the highest gross income.
15. -- Get the average rating of transactions paid via Ewallet.
16. -- Find the most expensive product line by unit price.
17. -- List all product lines purchased in Naypyitaw.
18. -- Get the average gross income for transactions made by members.
19. -- Find the top 2 cities with the highest average rating per transaction, but only consider cities where more than 100 transactions occurred.
20. -- Identify the branch with the most balanced ratio of male to female customers
21. --  Identify the most common time of day (morning, afternoon, evening, night) for transactions in each city.
