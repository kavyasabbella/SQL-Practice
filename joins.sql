-- =====================================================
-- SQL Practice - Day 4
-- Topic: SQL Joins
-- Description: This file demonstrates different types
-- of SQL joins using Students and Courses tables.
-- =====================================================

-- Use the existing database
USE CollegeDB;

-- Create Courses table
CREATE TABLE Courses (
    StudentID INT,
    CourseName VARCHAR(50),
    Trainer VARCHAR(50)
);

-- Insert sample data
INSERT INTO Courses VALUES
(101, 'Python', 'Mr. Raj'),
(102, 'SQL', 'Ms. Anjali'),
(103, 'Java', 'Mr. Kiran'),
(106, 'Power BI', 'Mr. Arun');

-- Display Students table
SELECT * FROM Students;

-- Display Courses table
SELECT * FROM Courses;

-- =====================================================
-- INNER JOIN
-- Displays only matching records from both tables
-- =====================================================

SELECT
    Students.StudentID,
    Students.Name,
    Courses.CourseName,
    Courses.Trainer
FROM Students
INNER JOIN Courses
ON Students.StudentID = Courses.StudentID;

-- =====================================================
-- LEFT JOIN
-- Displays all records from Students table and
-- matching records from Courses table
-- =====================================================

SELECT
    Students.StudentID,
    Students.Name,
    Courses.CourseName
FROM Students
LEFT JOIN Courses
ON Students.StudentID = Courses.StudentID;

-- =====================================================
-- RIGHT JOIN
-- Displays all records from Courses table and
-- matching records from Students table
-- =====================================================

SELECT
    Students.StudentID,
    Students.Name,
    Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.StudentID = Courses.StudentID;

-- =====================================================
-- Students who have not enrolled in any course
-- =====================================================

SELECT
    Students.StudentID,
    Students.Name
FROM Students
LEFT JOIN Courses
ON Students.StudentID = Courses.StudentID
WHERE Courses.StudentID IS NULL;

-- =====================================================
-- Courses without matching students
-- =====================================================

SELECT
    Courses.StudentID,
    Courses.CourseName
FROM Courses
LEFT JOIN Students
ON Courses.StudentID = Students.StudentID
WHERE Students.StudentID IS NULL;
