create database HR_data;
use HR_data;

select * from hr_data;

/*Query 1 : Basic Data Exploration:

-- Total employees          */

select count(*) as total_employees
from hr_data;

--Gender Distribution --

select 
Gender,
COUNT(*) as count
from hr_data
group by Gender;

-- Age Distribution --

select age_group,COUNT(*) as count
from
(
 select 
   case
     when Age < 25 then 'Under 25'
     when Age Between 25 and 35 then '25-35'
     when Age between 36 and 45 then '36-45'
     Else 'Above 45'
	 End as age_group
  from hr_data
) as sub

group by age_group
order by count Desc;




 
