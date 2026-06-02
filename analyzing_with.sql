CREATE DATABASE `ai_impact_data`;

USE `ai_impact_data`;

SELECT
    *
FROM
    `ai_impact_data`
LIMIT
    5;

SELECT
    COUNT(*) AS Total_Employees
FROM
    `ai_impact_data`;

SELECT
    Job_Title,
    MAX(AI_Replacement_Risk),
    COUNT(Education_Level),
    Education_Level
FROM
    `ai_impact_data`
GROUP BY
    Job_Title,
    Education_Level
ORDER BY
    MAX(AI_Replacement_Risk) DESC;