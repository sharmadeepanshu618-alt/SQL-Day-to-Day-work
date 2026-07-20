
create database joinsdb;
use joinsdb;
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
DepartmentID INT
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 105), -- No matching department
(4, 'David', NULL), -- No department assigned
(5, 'Eva', 101);

select * from departments;
select * from employees;

-- old syntax
SELECT e.EmployeeID, e.EmployeeName,
e.DepartmentID, d.DepartmentID, d.DepartmentName
FROM Employees AS e
JOIN Departments AS d
where e.DepartmentID = d.DepartmentID;

-- new syntax
SELECT e.EmployeeID, e.EmployeeName,
e.DepartmentID, d.DepartmentID, d.DepartmentName
FROM Employees AS e
JOIN Departments AS d
ON e.DepartmentID = d.DepartmentID;

-- left new syntax
SELECT e.EmployeeID, e.EmployeeName,
e.DepartmentID, d.DepartmentID, d.DepartmentName
FROM Employees AS e left join
Departments AS d
ON e.DepartmentID = d.DepartmentID;

use world;
select c.id, c.name from city as c;
select cty.code,cty.name from country as cty;

select c.id, c.name,c.countrycode, cty.code,cty.name from city as c
join country as cty
on c.countrycode=cty.code;

-- cross join/cartesian join
select c.id, c.name,c.countrycode, cty.code,cty.name from city as c
cross join country as cty;

select c.id, c.name,c.countrycode, cty.code,cty.name from city as c
join country as cty;



  