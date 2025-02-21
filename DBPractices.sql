-- Create the database
CREATE DATABASE IF NOT EXISTS UniversityManagement;
USE UniversityManagement;

-- Create the Students table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    EnrollmentDate DATE NOT NULL
);

-- Insert data into the Students table
INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2022-09-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '2021-09-01'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '2023-01-15'),
    ('Bob', 'Brown', 'bob.brown@example.com', '2020-05-20'),
    ('Emma', 'White', 'emma.white@example.com', '2023-09-01'),
    ('Liam', 'Green', 'liam.green@example.com', '2022-01-10'),
    ('Olivia', 'Black', 'olivia.black@example.com', '2021-07-22');

-- Create the Courses table
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Instructor VARCHAR(100) NOT NULL
);

-- Insert data into the Courses table
INSERT INTO Courses (CourseName, Instructor)
VALUES
    ('Database Systems', 'Dr. Michael Chen'),
    ('Introduction to Programming', 'Prof. Emily Carter'),
    ('Data Structures', 'Dr. Sarah Miller'),
    ('Computer Networks', 'Prof. David Lee'),
    ('Machine Learning', 'Dr. Rachel Adams'),
    ('Software Engineering', 'Prof. Mark Spencer');

-- Create the Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Insert data into the Enrollments table
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES
    (1, 1, '2022-09-10'),
    (1, 2, '2022-09-12'),
    (2, 1, '2021-09-05'),
    (2, 3, '2021-09-10'),
    (3, 4, '2023-01-20'),
    (4, 2, '2020-05-25'),
    (4, 3, '2020-05-30'),
    (5, 5, '2023-09-10'),
    (6, 6, '2022-01-15'),
    (7, 1, '2021-07-25');

-- Instructions for Students
-- Students: Use the provided data to practice writing SQL queries.
-- You can add more data to the tables using INSERT statements. For example:
-- INSERT INTO Students (FirstName, LastName, Email, EnrollmentDate) VALUES ('New', 'Student', 'new.student@example.com', '2024-01-01');
-- Explore different queries like SELECT, JOINs, GROUP BY, and others based on this dataset.

-- Exercise: Write queries to answer the following questions:
-- 1. List all students enrolled in "Database Systems."
-- 2. Find the total number of students enrolled in each course.
-- 3. Identify students who enrolled after a specific date.
-- 4. Add a new course and enroll a student in it.
-- 5. Write a query to show students and their courses sorted by enrollment date.
