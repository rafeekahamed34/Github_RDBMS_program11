CREATE TABLE student(
 StudentID INT(5) primary key,
 StudentName VARCHAR(50) NOT NULL,
 DepartmentID  INT(5),
 FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
 );
 INSERT INTO student(StudentID,StudentName,DepartmentID)
 VALUES
 (1001,'Arun',10),
 (1002,'Priya',20),
 (1003,'Kumar',10);
 CREATE TABLE Department(
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(50) NOT NULL
 );
 INSERT INTO Department(DepartmentID,DepartmentName)
 VALUES
 (15,'Computer Science'),
 (25,'Mathematics');
 CREATE TABLE Course (
CourseID INT ,
CourseName VARCHAR(30)
);
INSERT INTO Course VALUES
(201,'Database Systems'),
(202,'Data Structures'),
(203,'Mathematics');
CREATE TABLE Enrollment(
EnrollmentID INT,
StudentID INT,
CourseID INT);
INSERT INTO Enrollment VALUES 
(1,1001,201),
(2,1001,202),
(3,1002,203),
(4,1003,201);
CREATE VIEW StudentDetails AS
SELECT
    student.StudentName,
    Course.CourseName,
    Department.DepartmentName
FROM student
INNER JOIN Enrollment
    ON student.StudentID = Enrollment.StudentID
INNER JOIN Course
    ON Enrollment.CourseID = Course.CourseID
INNER JOIN Department
    ON student.DepartmentID = Department.DepartmentID;
    SELECT * FROM StudentDetails;
