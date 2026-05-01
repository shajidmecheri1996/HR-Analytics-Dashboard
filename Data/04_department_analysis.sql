use HR_data;

/* Department Analysis  */

-- Department wise Headcount --

Select 
Department,
COUNT(*) as headcount,
ROUND(Avg(Age),1) as avg_age,
ROUND(AVG(YearsAtCompany),1) as avg_tenure
from hr_data
Group By Department;

-- Job Satisfaction by Department --

Select 
 Department,
 ROUND(Avg(JobSatisfaction),2) as avg_satisfaction
From hr_data
Group by Department
Order by avg_satisfaction;

-- OverTime Analysis --

Select 
 OverTime,
 COUNT(*) as count,
 ROUND(Avg(MonthlyIncome),2) as avg_salary
from hr_data
group by OverTime;