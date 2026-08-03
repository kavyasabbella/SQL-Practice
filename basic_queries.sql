-- =====================================================
-- SQL Practice - Day 1
-- Topic: Basic SQL Queries
-- Description: This file demonstrates basic SQL queries
-- using a Student table.
-- =====================================================

-- Create Database
CREATE DATABASE CollegeDB;

-- Use the database
USE CollegeDB;

-- Create Student table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Marks INT
);

-- Insert sample data
INSERT INTO Students VALUES
(101, 'Rahul', 20, 'CSE', 85),
(102, 'Priya', 21, 'AI & ML', 92),
(103, 'Arjun', 19, 'ECE', 78),
(104, 'Sneha', 20, 'CSE', 88),
(105, 'Kiran', 22, 'AI & ML', 95);

-- Display all records
SELECT * FROM Students;

-- Display only Name and Marks
SELECT Name, Marks
FROM Students;

-- Students with marks greater than 85
SELECT *
FROM Students
WHERE Marks > 85;

-- Students from AI & ML department
SELECT *
FROM Students
WHERE Department = 'AI & ML';

-- Display students sorted by Marks (Highest to Lowest)
SELECT *
FROM Students
ORDER BY Marks DESC;

-- Display students sorted by Name (A to Z
SELECT *
FROM Students
ORDER BY Name ASC;
