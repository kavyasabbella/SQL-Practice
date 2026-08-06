-- =====================================================
-- SQL Practice - Day 6
-- Topic: Views and Common Table Expressions (CTEs)
-- Description: This file demonstrates how to create
-- views and use CTEs with the Students table.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Display all records
SELECT * FROM Students;

-- =====================================================
-- VIEW
-- A view is a virtual table based on a SQL query.
-- =====================================================

-- Create a view for students scoring more than 85 marks
CREATE VIEW HighScoringStudents AS
SELECT StudentID, Name, Department, Marks
FROM Students
WHERE Marks > 85;

-- Display the view
SELECT * FROM HighScoringStudents;

-- =====================================================
-- CTE (Common Table Expression)
-- A temporary result set used within a query.
-- =====================================================

WITH DepartmentAverage AS
(
    SELECT
        Department,
        AVG(Marks) AS AverageMarks
    FROM Students
    GROUP BY Department
)
SELECT *
FROM DepartmentAverage;

-- =====================================================
-- CTE with filtering
-- Display departments having average marks above 85
-- =====================================================

WITH DepartmentAverage AS
(
    SELECT
        Department,
        AVG(Marks) AS AverageMarks
    FROM Students
    GROUP BY Department
)
SELECT *
FROM DepartmentAverage
WHERE AverageMarks > 85;

-- =====================================================
-- CTE with JOIN
-- Display students along with their department average
-- =====================================================

WITH DepartmentAverage AS
(
    SELECT
        Department,
        AVG(Marks) AS AverageMarks
    FROM Students
    GROUP BY Department
)
SELECT
    S.StudentID,
    S.Name,
    S.Department,
    S.Marks,
    D.AverageMarks
FROM Students S
JOIN DepartmentAverage D
ON S.Department = D.Department;
