-- ================================
-- 02: ATTRITION ANALYSIS
-- HR Analytics Project
-- ================================

-- Overall attrition count
SELECT attrition,
COUNT(*) AS count,
ROUND(COUNT(*) * 100.0 /
    (SELECT COUNT(*) 
     FROM hr_data), 2) AS percentage
FROM hr_data
GROUP BY attrition;

-- Attrition by department
SELECT department,
COUNT(*) AS total,
SUM(CASE WHEN attrition = 'Yes' 
    THEN 1 ELSE 0 END) AS left_count,
ROUND(SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) * 100.0 /
    COUNT(*), 2) AS attrition_rate
FROM hr_data
GROUP BY department
ORDER BY attrition_rate DESC;

-- Attrition by job role
SELECT jobrole,
COUNT(*) AS total,
SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) AS left_count
FROM hr_data
GROUP BY jobrole
ORDER BY left_count DESC;

-- Attrition by gender
SELECT gender,
COUNT(*) AS total,
SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) AS left_count
FROM hr_data
GROUP BY gender;

-- Attrition by overtime
SELECT overtime,
COUNT(*) AS total,
SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) AS left_count,
ROUND(SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) * 100.0 /
    COUNT(*), 2) AS attrition_rate
FROM hr_data
GROUP BY overtime;

-- Attrition by marital status
SELECT maritalstatus,
COUNT(*) AS total,
SUM(CASE WHEN attrition = 'Yes'
    THEN 1 ELSE 0 END) AS left_count
FROM hr_data
GROUP BY maritalstatus
ORDER BY left_count DESC;
