CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, JoiningDate)
VALUES 
(1, 'Alice', 'Johnson', 'HR', 60000, '2020-05-15'),
(2, 'Bob', 'Smith', 'IT', 75000, '2019-08-23'),
(3, 'Charlie', 'Brown', 'Finance', 80000, '2018-11-12'),
(4, 'David', 'Williams', 'IT', 72000, '2021-03-10'),
(5, 'Eve', 'Davis', 'Marketing', 65000, '2019-06-27');