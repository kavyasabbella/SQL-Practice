-- =====================================================
-- SQL Practice - Day 2
-- Topic: Aggregate Functions
-- Description: This file demonstrates SQL aggregate
-- functions using the Students table.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Display all records
SELECT * FROM Students;

-- Count the total number of students
SELECT COUNT(*) AS Total_Students
FROM Students;

-- Find the highest marks
SELECT MAX(Marks) AS Highest_Marks
FROM Students;

-- Find the lowest marks
SELECT MIN(Marks) AS Lowest_Marks
FROM Students;

-- Calculate the average marks
SELECT AVG(Marks) AS Average_Marks
FROM Students;

-- Calculate the total marks
SELECT SUM(Marks) AS Total_Marks
FROM Students;

-- Count students in the AI & ML department
SELECT COUNT(*) AS AI_ML_Students
FROM Students
WHERE Department = 'AI & ML';

-- Find the average marks of CSE students
SELECT AVG(Marks) AS CSE_Average
FROM Students
WHERE Department = 'CSE';

-- Find the highest marks in AI & ML
SELECT MAX(Marks) AS AI_ML_Highest
FROM Students
WHERE Department = 'AI & ML';

-- Find the lowest marks in ECE
SELECT MIN(Marks) AS ECE_Lowest
FROM Students
WHERE Department = 'ECE';
