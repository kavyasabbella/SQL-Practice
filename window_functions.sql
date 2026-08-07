-- =====================================================
-- SQL Practice - Day 7
-- Topic: Window Functions
-- Description: This file demonstrates SQL Window
-- Functions using the Students table.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Display all records
SELECT * FROM Students;

-- =====================================================
-- ROW_NUMBER()
-- Assigns a unique number to each row
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    ROW_NUMBER() OVER (ORDER BY Marks DESC) AS Row_Number
FROM Students;

-- =====================================================
-- RANK()
-- Gives the same rank for equal values and skips ranks
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    RANK() OVER (ORDER BY Marks DESC) AS Student_Rank
FROM Students;

-- =====================================================
-- DENSE_RANK()
-- Gives the same rank for equal values without skipping
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    DENSE_RANK() OVER (ORDER BY Marks DESC) AS Dense_Rank
FROM Students;

-- =====================================================
-- ROW_NUMBER() with PARTITION BY
-- Numbers students within each department
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    ROW_NUMBER() OVER
    (
        PARTITION BY Department
        ORDER BY Marks DESC
    ) AS Department_Row_Number
FROM Students;

-- =====================================================
-- RANK() with PARTITION BY
-- Ranks students within each department
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    RANK() OVER
    (
        PARTITION BY Department
        ORDER BY Marks DESC
    ) AS Department_Rank
FROM Students;

-- =====================================================
-- DENSE_RANK() with PARTITION BY
-- Dense ranks students within each department
-- =====================================================

SELECT
    StudentID,
    Name,
    Department,
    Marks,
    DENSE_RANK() OVER
    (
        PARTITION BY Department
        ORDER BY Marks DESC
    ) AS Department_Dense_Rank
FROM Students;
