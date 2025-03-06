select * from Employees_2

select * from Departments 

--1. Retrieve all employees along with their department names.
select e.FirstName, d.DepartmentName from Employees_2 e
inner join Departments d on  e.DepartmentID = d.DepartmentID
--2. Retrieve all employees, including those who dont have a department, along with their department names
SELECT e.FirstName, d.DepartmentName 
FROM Employees_2 e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

--3. Retrieve all departments, including those without employees, along with employee names.
SELECT d.DepartmentName, e.FirstName 
FROM Employees_2 e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID;


--4. 

SELECT e.FirstName, d.DepartmentName 
FROM Employees_2 e
Outer JOIN Departments d ON e.DepartmentID = d.DepartmentID;


--5 Retrieve the names of employees who work in the same department as ‘Alice’.
Select FirstName From Employees_2
where DepartmentID = (
select DepartmentID from Employees_2
where FirstName='Alice')
and FirstName != 'Alice'

--6. Retrieve a list of employees who do not belong to any department.
select * from Employees_2 
where DepartmentID is null 