-- ================================
-- 04: DEPARTMENT ANALYSIS
-- HR Analytics Project
-- ================================

-- Department headcount and averages
SELECT department,
COUNT(*) AS headcount,
ROUND(AVG(age), 1) AS avg_age,
ROUND(AVG(yearsatcompany), 1) 
    AS avg_tenure,
ROUND(AVG(monthlyincome), 2) 
    AS avg_salary
FROM hr_data
GROUP BY department;

-- Job satisfaction by department
SELECT department,
ROUND(AVG(jobsatisfaction), 2) 
    AS avg_satisfaction
FROM hr_data
GROUP BY department
ORDER BY avg_satisfaction DESC;

-- Work life balance by department
SELECT department,
ROUND(AVG(worklifebalance), 2) 
    AS avg_worklife_balance
FROM hr_data
GROUP BY department
ORDER BY avg_worklife_balance DESC;

-- Performance rating by department
SELECT department,
ROUND(AVG(performancerating), 2) 
    AS avg_performance
FROM hr_data
GROUP BY department;

-- Years at company by department
SELECT department,
ROUND(AVG(yearsatcompany), 1) 
    AS avg_years,
MAX(yearsatcompany) AS max_years,
MIN(yearsatcompany) AS min_years
FROM hr_data
GROUP BY department;
