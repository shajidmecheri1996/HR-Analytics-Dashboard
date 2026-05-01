-- ================================
-- 03: SALARY ANALYSIS
-- HR Analytics Project
-- ================================

-- Average salary by department
SELECT department,
ROUND(AVG(monthlyincome), 2) 
    AS avg_salary,
MAX(monthlyincome) AS max_salary,
MIN(monthlyincome) AS min_salary
FROM hr_data
GROUP BY department
ORDER BY avg_salary DESC;

-- Average salary by job role
SELECT jobrole,
ROUND(AVG(monthlyincome), 2) 
    AS avg_salary
FROM hr_data
GROUP BY jobrole
ORDER BY avg_salary DESC;

-- Salary by education level
SELECT education,
ROUND(AVG(monthlyincome), 2) 
    AS avg_salary
FROM hr_data
GROUP BY education
ORDER BY education;

-- High earners above average
SELECT employeeid,
department,
jobrole,
monthlyincome
FROM hr_data
WHERE monthlyincome > (
    SELECT AVG(monthlyincome)
    FROM hr_data
)
ORDER BY monthlyincome DESC;

-- Salary range distribution
SELECT 
CASE
    WHEN monthlyincome < 3000 
        THEN 'Below 3K'
    WHEN monthlyincome <= 6000 
        THEN '3K - 6K'
    WHEN monthlyincome <= 10000 
        THEN '6K - 10K'
    ELSE 'Above 10K'
END AS salary_range,
COUNT(*) AS employee_count
FROM hr_data
GROUP BY salary_range;

-- Salary vs attrition
SELECT attrition,
ROUND(AVG(monthlyincome), 2) 
    AS avg_salary
FROM hr_data
GROUP BY attrition;
