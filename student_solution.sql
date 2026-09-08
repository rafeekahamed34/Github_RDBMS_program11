-- ============================================
-- RDBMS PROGRAM 11
-- CREATE VIEW - StudentDetails
-- ============================================

-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS CollegeDB;

-- Step 2: Select Database
USE CollegeDB;


-- Step 3: Create Student Table

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);


-- Step 4: Insert Student Records
-- StudentID | StudentName | DepartmentID
-- 1001      | Arun        | 10
-- 1002      | Priya       | 20
-- 1003      | Kumar       | 10


-- Step 5: Create Department Table

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);


-- Step 6: Insert Department Records
-- DepartmentID | DepartmentName
-- 10            | Computer Science
-- 20            | Mathematics


-- Step 7: Create Course Table

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);


-- Step 8: Insert Course Records
-- CourseID | CourseName
-- 201      | Database Systems
-- 202      | Data Structures
-- 203      | Mathematics


-- Step 9: Create Enrollment Table

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);


-- Step 10: Insert Enrollment Records
-- EnrollmentID | StudentID | CourseID
-- 1            | 1001      | 201
-- 2            | 1001      | 202
-- 3            | 1002      | 203
-- 4            | 1003      | 201


-- Step 11: Create StudentDetails View
-- Display:
-- Student Name
-- Course Name
-- Department Name


-- Write your CREATE VIEW statement here.


-- Step 12: Display the View
-- SELECT * FROM StudentDetails;
