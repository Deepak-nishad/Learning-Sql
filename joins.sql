-- CREATE--  DATABASE joins;
-- -- SHOW DATABASES;
 USE joins;

-- CREATE TABLE Student (      
--   id int PRIMARY KEY not null auto_increment ,    
--   admission_no varchar(45) NOT NULL,  
--   first_name varchar(45) NOT NULL,      
--   last_name varchar(45) NOT NULL,  
--   age int,  
--   city varchar(25) NOT NULL      
-- );
--  drop table student;
-- CREATE TABLE Fee (   
--   admission_no varchar(45) NOT NULL,  
--   course varchar(45) NOT NULL,      
--   amount_paid int   
-- );

-- INSERT INTO Student (admission_no, first_name, last_name, age, city)       
-- VALUES (3354,'Luisa', 'Evans', 13, 'Texas'),       
-- (2135, 'Paul', 'Ward', 15, 'Alaska'),       
-- (4321, 'Peter', 'Bennett', 14, 'California'),    
-- (4213,'Carlos', 'Patterson', 17, 'New York'),       
-- (5112, 'Rose', 'Huges', 16, 'Florida'),  
-- (6113, 'Marielia', 'Simmons', 15, 'Arizona'),    
-- (7555,'Antonio', 'Butler', 14, 'New York'),       
-- (8345, 'Diego', 'Cox', 13, 'California');  

-- INSERT INTO Fee (admission_no, course, amount_paid)       
-- VALUES (3354,'Java', 20000),       
-- (7555, 'Android', 22000),       
-- (4321, 'Python', 18000),    
-- (8345,'SQL', 15000),       
-- (5112, 'Machine Learning', 30000); 

-- select * from fee;

-- SELECT Student.admission_no, Student.first_name, Student.last_name, Fee.course, Fee.amount_paid  
-- FROM Student  
-- INNER JOIN Fee  
-- ON Student.admission_no = Fee.admission_no; 


-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES
    (1, 'John Doe', 'New York'),
    (2, 'Jane Smith', 'Los Angeles'),
    (3, 'David Johnson', 'Chicago'),
    (4, 'Emily Davis', 'Houston');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2023-06-01', 100.50),
    (2, 1, '2023-06-10', 75.20),
    (3, 3, '2023-06-15', 200.00),
    (4, 4, '2023-06-20', 50.80);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES
    (1, 'T-shirt', 20.00),
    (2, 'Jeans', 50.00),
    (3, 'Shoes', 80.00),
    (4, 'Hat', 15.00);

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Orders.OrderID, Orders.OrderDate, Products.ProductName, Products.Price
FROM Orders
INNER JOIN Products ON Orders.CustomerID = Products.ProductID;



