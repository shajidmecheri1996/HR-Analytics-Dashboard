-- ================================
-- 01: DATA EXPLORATION
-- HR Analytics Project
-- ================================

-- Total employees
SELECT COUNT(*) AS total_employees
FROM hr_data;

-- Gender distribution
SELECT gender,
COUNT(*) AS count
FROM hr_data
GROUP BY gender;

-- Age group distribution
SELECT 
CASE 
    WHEN age < 25 THEN 'Under 25'
    WHEN age BETWEEN 25 AND 35 
        THEN '25-35'
    WHEN age BETWEEN 36 AND 45 
        THEN '36-45'
    ELSE 'Above 45'
END AS age_group,
COUNT(*) AS count
FROM hr_data
GROUP BY age_group;

-- Department wise count
SELECT department,
COUNT(*) AS total
FROM hr_data
GROUP BY department;

-- Education field distribution
SELECT educationfield,
COUNT(*) AS count
FROM hr_data
GROUP BY educationfield;

-- Average age
SELECT 
ROUND(AVG(age), 1) AS average_age
FROM hr_data;
