SELECT emp.employeeId,
 emp.firstName,  emp.lastName,
 min(sal.salesAmount) as MinimumSales,
 max(sal.salesAmount) as MaximumSales
 from sales sal join employee emp on sal.employeeID = emp.employeeID
 where sal.soldDate >= date('now','start of year')
 Group by emp.employeeID
 Order by emp.employeeID;