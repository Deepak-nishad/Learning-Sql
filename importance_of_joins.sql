create database importancejoins;
use importancejoins;

-- inner join
CREATE TABLE Employees (
  ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Department VARCHAR(50)
);

INSERT INTO Employees (ID, Name, Department) VALUES
  (1, 'John Doe', 'HR'),
  (2, 'Jane Smith', 'Finance'),
  (3, 'Michael Johnson', 'Sales');
  
  select * from Employees;
  
  CREATE TABLE Salary (
  ID INT PRIMARY KEY,
  Employee_ID INT,
  Amount DECIMAL(10, 2)
);

INSERT INTO Salary (ID, Employee_ID, Amount) VALUES
  (1001, 1, 5000.00),
  (1002, 2, 6000.00),
  (1003, 3, 4500.00);
  
    select * from salary;
    
    SELECT Employees.Name, Employees.Department, Salary.Amount
FROM Employees
INNER JOIN Salary ON Employees.ID = Salary.Employee_ID;

-- outer join

-- inner joins
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(50),
  City VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
  (1, 'John Smith', 'New York'),
  (2, 'Mary Johnson', 'Los Angeles'),
  (3, 'David Brown', 'San Francisco');
  
  CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  Amount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, Amount) VALUES
  (1001, 2, 150.50),
  (1002, 1, 75.20),
  (1003, 3, 200.10);

SELECT Customers.CustomerName, Customers.City, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- right joins
SELECT Customers.CustomerName, Customers.City, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
 




