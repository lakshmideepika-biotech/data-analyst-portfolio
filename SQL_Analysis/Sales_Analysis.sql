
/*SQL PROJECT: Sales Analysis using Sample Superstore Dataset
 Author: Lakshmi Deepika Peyala*/

-- 1. View all records
SELECT * FROM dbo.SampleSuperstore;

-- 2. Total number of orders
SELECT COUNT(*) AS Total_Orders
FROM dbo.SampleSuperstore;

-- 3. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM dbo.SampleSuperstore;

-- 4. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM dbo.SampleSuperstore;

-- 5. Average Sales
SELECT AVG(Sales) AS Average_Sales
FROM dbo.SampleSuperstore;

-- 6. Highest Sales
SELECT MAX(Sales) AS Highest_Sale
FROM dbo.SampleSuperstore;

-- 7. Lowest Sales
SELECT MIN(Sales) AS Lowest_Sale
FROM dbo.SampleSuperstore;

-- 8. Sales by Category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM dbo.SampleSuperstore
GROUP BY Category;

-- 9. Profit by Category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM dbo.SampleSuperstore
GROUP BY Category;

-- 10. Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM dbo.SampleSuperstore
GROUP BY Region;

-- 11. Profit by Region
SELECT Region,
SUM(Profit) AS Total_Profit
FROM dbo.SampleSuperstore
GROUP BY Region;

-- 12. Sales by Segment
SELECT Segment,
SUM(Sales) AS Total_Sales
FROM dbo.SampleSuperstore
GROUP BY Segment;

-- 13. Profit by Segment
SELECT Segment,
SUM(Profit) AS Total_Profit
FROM dbo.SampleSuperstore
GROUP BY Segment;

-- 14. Top 10 Highest Sales
SELECT TOP 10 *
FROM dbo.SampleSuperstore
ORDER BY Sales DESC;

-- 15. Top 10 Highest Profit
SELECT TOP 10 *
FROM dbo.SampleSuperstore
ORDER BY Profit DESC;

-- 16. Top 10 Lowest Profit
SELECT TOP 10 *
FROM dbo.SampleSuperstore
ORDER BY Profit ASC;

-- 17. Orders from West Region
SELECT *
FROM dbo.SampleSuperstore
WHERE Region='West';

-- 18. Furniture Orders
SELECT *
FROM dbo.SampleSuperstore
WHERE Category='Furniture';

-- 19. Technology Orders
SELECT *
FROM dbo.SampleSuperstore
WHERE Category='Technology';

-- 20. Sales Greater than 1000
SELECT *
FROM dbo.SampleSuperstore
WHERE Sales>1000;

-- 21. Profit Greater than 500
SELECT *
FROM dbo.SampleSuperstore
WHERE Profit>500;

-- 22. Average Profit by Category
SELECT Category,
AVG(Profit) AS Average_Profit
FROM dbo.SampleSuperstore
GROUP BY Category;

-- 23. Number of Orders by Ship Mode
SELECT Ship_Mode,
COUNT(*) AS Orders
FROM dbo.SampleSuperstore
GROUP BY Ship_Mode;

-- 24. Cities with Highest Sales
SELECT City,
SUM(Sales) AS Total_Sales
FROM dbo.SampleSuperstore
GROUP BY City
ORDER BY Total_Sales DESC;

-- 25. States with Highest Profit
SELECT State,
SUM(Profit) AS Total_Profit
FROM dbo.SampleSuperstore
GROUP BY State
ORDER BY Total_Profit DESC;