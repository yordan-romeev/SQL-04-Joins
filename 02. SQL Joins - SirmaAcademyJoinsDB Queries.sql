USE SirmaAcademyJoinDB;
GO

-- ### 1. Orders with Customer Names and Countries
-- Write a query to display the `OrderID`, `OrderDate`, `CustomerName`, and `Country` for all orders. Use the `Orders` and `Customers` tables to get the required information.

SELECT o.OrderID, o.OrderDate, c.CustomerName, c.Country
FROM Orders AS o
    JOIN Customers as c ON c.CustomerID = o.CustomerID

-- ### 2. Order Details with Product Names and Prices
-- Write a query to display the `OrderID`, `ProductName`, `Price`, and `Quantity` for all products ordered. Use the `OrderDetails` and `Products` tables.

SELECT od.OrderID, p.ProductName, p.Price, od.Quantity
FROM OrderDetails AS od
JOIN Products AS p ON od.ProductID = p.ProductID


