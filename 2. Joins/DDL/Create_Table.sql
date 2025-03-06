CREATE TABLE Employees_2 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentID)
VALUES 
(1, 'Alice', 'Johnson', 1),
(2, 'Bob', 'Smith', 2),
(3, 'Charlie', 'Brown', 1),
(4, 'David', 'Williams', 3),
(5, 'Eve', 'Davis', NULL);

--Department Table 
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');



