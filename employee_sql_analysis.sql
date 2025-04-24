create database student;
use student;


-- Create the Department table
CREATE TABLE Department (
    DepartmentID INTEGER PRIMARY KEY,
    City TEXT,
    DepartmentName TEXT);

-- Sample data (you can also use the CSV import option if using a GUI tool)
INSERT INTO Department (DepartmentID, City, DepartmentName) VALUES
(1, 'Bangalore', 'Engineering'),
(2, 'Pune', 'Marketing'),
(3, 'New Delhi', 'Sales'),
(4, 'Mumbai', 'HR');


-- Query 1: Employees in the highest PaymentTier
SELECT * FROM Employee WHERE PaymentTier = 1;

-- Query 2: Average experience grouped by education
SELECT Education, AVG(ExperienceInCurrentDomain) AS AvgExperience
FROM Employee
GROUP BY Education
ORDER BY AvgExperience DESC;

-- Query 3: INNER JOIN Employee with Department
SELECT E.Education, E.City, D.DepartmentName, E.Age
FROM Employee E
INNER JOIN Department D ON E.City = D.City
ORDER BY E.City;

-- Query 4: Subquery - Employees with more experience than the average
SELECT * FROM Employee
WHERE ExperienceInCurrentDomain > (
    SELECT AVG(ExperienceInCurrentDomain) FROM Employee);

-- Query 5: Create a View for employees who were never benched
CREATE VIEW ActiveEmployees AS
SELECT * FROM Employee WHERE EverBenched = 'No';

-- Query 6: Create index on ExperienceInCurrentDomain for performance
CREATE INDEX idx_experience ON Employee(ExperienceInCurrentDomain);

-- Query 7: ORDER BY - List employees sorted by age descending
SELECT * FROM Employee
ORDER BY Age DESC;

-- Query 8: LEFT OUTER JOIN - All departments and their employees (if any)
SELECT D.DepartmentName, E.Education, E.Gender, E.City
FROM Department D
LEFT OUTER JOIN Employee E ON D.City = E.City
ORDER BY D.DepartmentName;

-- Query 9: RIGHT OUTER JOIN simulated (SQLite workaround)
SELECT E.Education, E.City, D.DepartmentName
FROM Employee E
LEFT JOIN Department D ON E.City = D.City;

-- Query 10: SUM - Total experience of employees grouped by city
SELECT City, SUM(ExperienceInCurrentDomain) AS TotalExperience
FROM Employee
GROUP BY City
ORDER BY TotalExperience DESC;

