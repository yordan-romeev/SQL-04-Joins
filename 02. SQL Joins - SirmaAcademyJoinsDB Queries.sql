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

-- ### 3. Orders with Shipper Information
-- Write a query to display the `OrderID`, `OrderDate`, and `ShipperName` for each order. Use the `Orders` and `Shippers` tables to connect the data.

SELECT o.OrderID, o.OrderDate, s.ShipperName
FROM Orders AS o
    JOIN Shippers AS s ON o.ShipperID = s.ShipperID

-- ### 4. Products by Category with Prices
-- Write a query to list all `ProductName`, `CategoryName`, and `Price`. Use the `Products` and `Categories` tables to fetch the category information for each product.

SELECT p.ProductName, c.CategoryName, p.Price
FROM Products p
    JOIN Categories c ON p.CategoryID = c.CategoryID


-- ### 5. Supplier and Product List with Quantities Available
-- Write a query to list the `SupplierName`, `ProductName`, and `Price` of products available. Use the `Suppliers` and `Products` tables.

SELECT s.SupplierName, p.ProductName, p.Price
FROM Suppliers  AS s
    JOIN Products AS p ON s.SupplierID = p.SupplierID

-- ### 6. Orders with Total Quantity and Total Price
-- Write a query to display the `OrderID`, `CustomerName`, total `Quantity`, and the total price of all products in the order. Use the `Orders`, `OrderDetails`, and `Customers` tables. Group by `OrderID`.

SELECT o.OrderID, c.CustomerName, SUM(od.Quantity) AS TotalQuantity, SUM(od.Quantity * p.price) AS TotalPrice
FROM Orders AS o
    JOIN OrderDetails AS od ON o.OrderID = od.OrderID
    JOIN Customers AS c ON c.CustomerID = o.CustomerID
    JOIN Products AS p ON od.ProductID = p.ProductID
GROUP BY o.OrderID, c.CustomerName