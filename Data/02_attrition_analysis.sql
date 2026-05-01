use HR_data;

/* Query-2 : Attrition Analysis :   */

-- Overall Attrition Rate --

select 
Attrition ,
COUNT(*) as count,
ROUND(Count(*) * 100.0/
(Select COUNT(*) from hr_data),2)
as Percentage
from hr_data
group by Attrition;

-- Attrition by Department --

Select 
 Department,
 COUNT(*) as Total,
 SUM(Cast(Attrition As INT)) as left_count,
 ROUND(Sum(Cast(Attrition As INT)) * 100.0/
	   Count(*),2) as Attrition_rate
From hr_data
Group by Department
Order by Attrition_rate Desc;

-- Attrition by Job Role --

Select 
 JobRole,
 COUNT(*) as Total,
 SUM(Cast(Attrition As INT)) as left_count
 From hr_data
 Group by JobRole
 Order by Total Desc;

