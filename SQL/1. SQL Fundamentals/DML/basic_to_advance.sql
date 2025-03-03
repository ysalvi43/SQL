--1. Retrieve all columns from the Employees table where the department is 'IT'.
select * from Employees
where Department = 'IT'

--2. Retrieve only the FirstName, LastName, and Salary of employees who have a salary greater than 70,000.
select Firstname, LastName, Salary 
from Employees
where Salary > 70000 


--3. Retrieve all employee details sorted by JoiningDate in descending order (latest first).
select * from Employees
order by JoiningDate Desc

--4.  Retrieve the unique list of departments from the Employees table.
select Distinct Department from Employees

--5. Retrieve the total number of employees in the Employees table
select Count(*) from Employees

--6. Retrieve the average salary of employees in the IT department.

select avg(Salary) from Employees
where Department = 'IT'



-- Advance Level 
--1. Retrieve the second highest salary from the Employees table
-- Method 1 
select top 1 Salary
from Employees
where Salary < (select Max(Salary) from Employees)
order by Salary DESC

--2. Find all employees whose first name contains the letter 'a' (case insensitive).
select FirstName from Employees
where FirstName Like '%a%'

--3. Retrieve the department-wise highest salary along with the employee’s name.
SELECT e.FirstName, e.Department, e.Salary
FROM Employees e
JOIN (
    SELECT Department, MAX(Salary) AS MaxSalary
    FROM Employees
    GROUP BY Department
) sub ON e.Department = sub.Department AND e.Salary = sub.MaxSalary;


--4. Find employees who joined before the earliest joining date in the IT department.
SELECT * 
FROM Employees 
WHERE JoiningDate < (SELECT MIN(JoiningDate) FROM Employees WHERE Department = 'IT');

--5. Retrieve employees whose salary is within 10% of the highest salary in the table.

select *from Employees
where Salary
between
(select max(Salary)*0.9 from Employees)
AND 
    (SELECT MAX(Salary) FROM Employees);



















