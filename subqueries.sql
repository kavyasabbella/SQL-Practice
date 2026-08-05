-- =====================================================
-- SQL Practice - Day 5
-- Topic: Subqueries
-- Description: This file demonstrates different types
-- of SQL subqueries using the Students table.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Display all records
SELECT * FROM Students;

-- =====================================================
-- Subquery 1
-- Display students who scored above the average marks
-- =====================================================

SELECT *
FROM Students
WHERE Marks >
(
    SELECT AVG(Marks)
    FROM Students
);

-- =====================================================
-- Subquery 2
-- Display student(s) with the highest marks
-- =====================================================

SELECT *
FROM Students
WHERE Marks =
(
    SELECT MAX(Marks)
    FROM Students
);

-- =====================================================
-- Subquery 3
-- Display student(s) with the lowest marks
-- =====================================================

SELECT *
FROM Students
WHERE Marks =
(
    SELECT MIN(Marks)
    FROM Students
);

-- =====================================================
-- Subquery 4
-- Display students belonging to departments that have
-- more than one student
-- =====================================================

SELECT *
FROM Students
WHERE Department IN
(
    SELECT Department
    FROM Students
    GROUP BY Department
    HAVING COUNT(*) > 1
);

-- =====================================================
-- Subquery 5
-- Display students whose marks are greater than Rahul's
-- =====================================================

SELECT *
FROM Students
WHERE Marks >
(
    SELECT Marks
    FROM Students
    WHERE Name = 'Rahul'
);

-- =====================================================
-- Subquery 6
-- Display students from departments having an
-- average marks greater than 85
-- =====================================================

SELECT *
FROM Students
WHERE Department IN
(
    SELECT Department
    FROM Students
    GROUP BY Department
    HAVING AVG(Marks) > 85
);
