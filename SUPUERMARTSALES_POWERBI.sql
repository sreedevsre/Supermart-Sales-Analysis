create  database Supermart;

use Supermart;

select  * 
from  dataset;

-- ---------------------------------------------------------------------------------------------------------------------------

--  List all cities where transactions occurred.

SELECT Branch, SUM(Total) AS Total_Revenue 
FROM dataset
GROUP BY Branch; 

-- Find the average customer rating for each product line.

SELECT Product_line, ROUND(AVG(Rating),3) AS Average_Rating 
FROM DATASET
GROUP BY Product_line;


-- Identify the payment method used most frequently.
SELECT PAYMENT ,COUNT(INVOICE_ID) AS COUNT
FROM DATASET 
GROUP BY PAYMENT
ORDER BY COUNT;

-- Customer Spending Patterns Based on Member Status
SELECT CUSTOMER_TYPE , AVG(Total) AS AvgSpending
FROM DATASET
GROUP BY CUSTOMER_TYPE;


-- Get the total tax collected in each city. 
SELECT City, SUM(CAST(`Tax_5%` AS DECIMAL(10,2))) AS Total_Tax 
FROM Dataset 
GROUP BY City;

-- Revenue Contribution of Different Payment Methods
SELECT PAYMENT, SUM(Total) AS TotalRevenue
FROM DATASET
GROUP BY PAYMENT
ORDER BY TotalRevenue DESC;


-- Find the top 3 highest-rated transactions.
SELECT INVOICE_ID, City, PRODUCT_LINE, Total, Rating
FROM DATASET
WHERE Rating IN (
    SELECT Rating
    FROM DATASET
    ORDER BY Rating DESC
    
);

-- Calculate the total and average sales for transactions with ratings above 8
SELECT ROUND(SUM(Total),2) AS TotalHighRatingSales, ROUND(AVG(Total),2) AS AvgHighRatingSales
FROM DATASET
WHERE Rating > 8;



-- Sales Performance by Category and City
SELECT City, PRODUCT_LINE, ROUND(SUM(Total),2)AS TotalSales
FROM DATASET
GROUP BY City, PRODUCT_LINE
ORDER BY City, PRODUCT_LINE;


--  Find the top 3 product lines by total revenue
SELECT `Product_line`, ROUND(SUM(Total),3) AS Revenue 
FROM DATASET
GROUP BY `Product_line` 
ORDER BY Revenue DESC 
LIMIT 3;

-- Get the average unit price for each product line.
SELECT `Product_line`, ROUND(AVG(`Unit_price`),3) AS Average_Price 
FROM DATASET
GROUP BY `Product_line`; 

-- Find the transaction with the highest rating. 
SELECT * 
FROM DATASET 
ORDER BY Rating DESC 
LIMIT 1;

-- Calculate the total cost of goods sold for each payment method.
SELECT Payment, SUM(COGS) AS Total_COGS 
FROM DATASET 
GROUP BY Payment; 

-- Find the date with the highest gross income.
SELECT `Standardized_Date`, ROUND(SUM(`Gross_income`),3) AS Total_Income 
FROM DATASET 
GROUP BY `Standardized_Date` 
ORDER BY Total_Income DESC 
LIMIT 5;

-- Get the average rating of transactions paid via Ewallet.
SELECT ROUND(AVG(Rating),2) AS Average_Rating 
FROM DATASET
WHERE Payment = 'Ewallet';

-- Find the most expensive product line by unit price.

SELECT `Product_line`, MAX(`Unit_price`) AS Max_Price 
FROM DATASET
GROUP BY `Product_line` 
ORDER BY Max_Price DESC 
LIMIT 2;

-- List all product lines purchased in Naypyitaw.
SELECT DISTINCT `Product_line` 
FROM DATASET
WHERE City = 'Naypyitaw'; 


-- Get the average gross income for transactions made by members.
SELECT ROUND(AVG(`Gross_income`),2) AS Average_Income 
FROM DATASET 
WHERE `Customer_type` = 'Member';


 -- Find the top 2 cities with the highest average rating per transaction, but only consider cities where more than 100 transactions occurred.
SELECT City, ROUND(AVG(Rating),2) AS Avg_Rating 
FROM DATASET
GROUP BY City 
HAVING COUNT(*) > 100 
ORDER BY Avg_Rating DESC 
LIMIT 2;

-- Identify the branch with the most balanced ratio of male to female customers
SELECT Branch,
       SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) AS Male_Count,
       SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) AS Female_Count,
       ABS(SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) - 
           SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END)) AS Balance_Difference
FROM DATASET
GROUP BY Branch
ORDER BY Balance_Difference ASC
LIMIT 1; 

--  Identify the most common time of day (morning, afternoon, evening, night) for transactions in each city.
SELECT City,
       CASE 
           WHEN HOUR(`Time`) BETWEEN 6 AND 11 THEN 'Morning'
           WHEN HOUR(`Time`) BETWEEN 12 AND 17 THEN 'Afternoon'
           WHEN HOUR(`Time`) BETWEEN 18 AND 21 THEN 'Evening'
           ELSE 'Night'
       END AS Time_Period,
       COUNT(*) AS Transactions
FROM DATASET
GROUP BY City, Time_Period
ORDER BY City, Transactions DESC;













