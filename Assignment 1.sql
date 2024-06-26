CREATE DATABASE Mydb;

DROP DATABASE Mydb;

USE Mydb;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Address) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '123 Main St'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '456 Elm St'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '789 Oak St'),
(4, 'Bob', 'Williams', 'bob.williams@example.com', '1011 Pine St'),
(5, 'Emily', 'Brown', 'emily.brown@example.com', '1213 Cedar St');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES 
(101, 1, '2024-01-10', 150.50),
(102, 2, '2024-01-15', 200.75),
(103, 3, '2024-01-20', 100.00),
(104, 4, '2024-02-01', 300.25),
(105, 5, '2024-02-05', 75.99);

SELECT * FROM Customers WHERE FirstName LIKE 'J%';

SELECT * FROM Orders WHERE OrderDate BETWEEN '2024-01-01' AND '2024-01-31';
SELECT * FROM Orders WHERE OrderDate >= '2024-01-01' AND OrderDate <= '2024-01-31';

SELECT * FROM Orders WHERE TotalAmount BETWEEN 100 AND 300 ORDER BY OrderDate ASC, TotalAmount DESC;

SELECT * FROM Customers WHERE CustomerID IN (1, 2, 3);
SELECT * FROM Customers WHERE CustomerID NOT IN (1, 2, 3);

