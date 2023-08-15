SELECT * from sales;


SELECT 
employee.firstName, 
employee.lastName,
sales.salesAmount
from employee
left join sales on employee.employeeId = sales.employeeId 
where sales.salesId is NULL and employee.title ='Sales Person'
order by employee.firstName;