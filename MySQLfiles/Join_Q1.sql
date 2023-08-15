SELECT
  emp.firstName,
  emp.lastName,
  emp.title,
  mng.firstName as MangerFirstName,
  mng.lastName as MangerlastName

from employee emp
Inner join employee mng 
  on emp.managerId = mng.employeeId;

