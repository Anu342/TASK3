Dataset:
Employee.csv
Fields include: Education, JoiningYear, City, PaymentTier, Age, Gender, EverBenched, ExperienceInCurrentDomain, LeaveOrNot

An additional table Department was created to enable JOIN operations:
Fields: DepartmentID, City, DepartmentName

SQL Concepts Applied:
Basic Queries
SELECT, WHERE, ORDER BY

Aggregate Functions:
AVG() – Average experience by education
SUM() – Total experience by city

Grouping:
GROUP BY with aggregate calculations

Joins:
INNER JOIN – Employee and Department
LEFT OUTER JOIN – All departments with or without employees
RIGHT OUTER JOIN – Employees with/without department info

Subqueries:
Find employees with above-average domain experience

Views:
Created a view ActiveEmployees for those never benched

Indexes:
Created index on ExperienceInCurrentDomain for performance

