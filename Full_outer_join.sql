create database full_join;
use full_join;
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    OrderDate DATE
);

INSERT INTO Customers (CustomerID, CustomerName)
VALUES (1, 'John Doe'),
       (2, 'Jane Smith'),
       (3, 'David Johnson');

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES (1, 1, '2023-07-01'),
       (2, 2, '2023-07-02'),
       (3, 2, '2023-07-03'),
       (4, 4, '2023-07-04');
       
   select * from Customers as C left join Orders as O on C.CustomerID = O.CustomerID union select * from Customers as C right join Orders as O on C.CustomerID = O.CustomerID;

SELECT *
FROM Customers
CROSS JOIN Orders;

-- self join
CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID)
VALUES (1, 'John Doe', 3),
       (2, 'Jane Smith', 3),
       (3, 'David Johnson', NULL),
       (4, 'Sarah Williams', 2);



select e1.EmployeeID, e2.EmployeeID, e2.EmployeeName from Employees as e1 inner join Employees as e2 on e1.ManagerID = e2.EmployeeId;





