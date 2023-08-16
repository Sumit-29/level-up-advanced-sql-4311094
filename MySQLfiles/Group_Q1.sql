SELECT emp.employeeId, emp.firstName, emp.lastName,
COUNT(*) as total_sales, sal.salesAmount, sal.soldDate 
from sales sal 
join employee emp on emp.employeeId = sal.employeeId
group by emp.employeeId
order by total_sales DESC;