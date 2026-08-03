-- =====================================================
-- SQL Practice - Day 3
-- Topic: GROUP BY and HAVING
-- Description: This file demonstrates how to group data
-- and filter grouped results using the Students table.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Display all records
SELECT * FROM Students;

-- Count students in each department
SELECT Department, COUNT(*) AS Total_Students
FROM Students
GROUP BY Department;

-- Calculate the average marks of each department
SELECT Department, AVG(Marks) AS Average_Marks
FROM Students
GROUP BY Department;

-- Find the highest marks in each department
SELECT Department, MAX(Marks) AS Highest_Marks
FROM Students
GROUP BY Department;

-- Find the lowest marks in each department
SELECT Department, MIN(Marks) AS Lowest_Marks
FROM Students
GROUP BY Department;

-- Calculate the total marks of each department
SELECT Department, SUM(Marks) AS Total_Marks
FROM Students
GROUP BY Department;

-- Display departments having more than one student
SELECT Department, COUNT(*) AS Total_Students
FROM Students
GROUP BY Department
HAVING COUNT(*) > 1;

-- Display departments with an average marks greater than 85
SELECT Department, AVG(Marks) AS Average_Marks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 85;
