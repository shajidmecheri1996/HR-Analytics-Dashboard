use HR_data;

/* Query-3: Salary Analysis :    */

-- Average Salary by Department --

Select 
  Department,
  ROUND(Avg(MonthlyIncome),2) as avg_salary,
  MAX(MonthlyIncome) as max_salary,
  MIN(MonthlyIncome) as min_salary
From hr_data
group by Department
Order by avg_salary Desc;

-- Average Salary by Job Role --

Select JobRole,
ROUND(Avg(MonthlyIncome),2) as avg_salary
From hr_data
Group by JobRole
Order By avg_salary Desc;

-- High Earners Above Average --

Select 
EmployeeNumber,
Department,
JobRole,
MonthlyIncome
From hr_data
Where MonthlyIncome >(
select AVG(MonthlyIncome) from hr_data)
Order by MonthlyIncome Desc;



