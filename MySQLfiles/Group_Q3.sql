SELECT  
emp.employeeId, emp.firstName, emp.lastName,
 count(sal.salesId) as SalesMade,sal.salesAmount
from sales sal join employee emp on 
sal.employeeId = emp.employeeId
where sal.soldDate >= date('now','start of year') 
group by emp.employeeId HAVING SalesMade > 5
Order by emp.firstName;
