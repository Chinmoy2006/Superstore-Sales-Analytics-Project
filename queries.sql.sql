-- Query 1: Total Sales and Profit by Region
SELECT 
    Region, 
    ROUND(SUM(Sales), 2) AS Total_Sales, 
    ROUND(SUM(Profit), 2) AS Total_Profit 
FROM sales_data 
GROUP BY Region 
ORDER BY Total_Sales DESC;

-- Query 2: Top 10 Customers by Sales
SELECT 
    "Customer Name", 
    ROUND(SUM(Sales), 2) AS Total_Sales 
FROM sales_data 
GROUP BY "Customer Name" 
ORDER BY Total_Sales DESC 
LIMIT 10;

-- Query 3: Sales and Profit by Category
SELECT 
    Category, 
    ROUND(SUM(Sales), 2) AS Total_Sales, 
    ROUND(SUM(Profit), 2) AS Total_Profit 
FROM sales_data 
GROUP BY Category 
ORDER BY Total_Profit DESC;

-- Query 4: Top 5 Most Profitable Sub-Categories
SELECT 
    "Sub-Category", 
    ROUND(SUM(Profit), 2) AS Total_Profit 
FROM sales_data 
GROUP BY "Sub-Category" 
ORDER BY Total_Profit DESC 
LIMIT 5;

