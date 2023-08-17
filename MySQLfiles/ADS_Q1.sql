SELECT * from sales;

SELECT 
    SUM(salesAmount) as Total_sales, 
    strftime('%Y', soldDate) as SaleYear    
FROM sales
GROUP BY strftime('%Y', soldDate)
ORDER BY  SaleYear;

WITH cte AS(
select strftime('%Y', soldDate) as soldYear, salesAmount
FROM sales
)
SELECT soldYear, format("$%.2f",sum(salesAmount)) AS AnnualSales
from cte 
GROUP BY soldYear
ORDER BY soldYear

