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

-- ### 7. Products Ordered by Customer Names
-- Write a query to display the `CustomerName`, `ProductName`, and `Quantity` for all orders. Use the `Orders`, `OrderDetails`, `Customers`, and `Products` tables.

SELECT c.CustomerName, p.ProductName, od.Quantity
FROM Orders AS o
    JOIN OrderDetails AS od ON o.OrderID = od.OrderID
    JOIN Customers AS c ON c.CustomerID = o.CustomerID
    JOIN Products AS p ON od.ProductID = p.ProductID

-- ### 8. Shipped Orders with Shipper and Employee Names
-- Write a query to display the `OrderID`, `OrderDate`, `ShipperName`, and the employee's `FirstName` and `LastName` who processed the shipping. Use the `Orders`, `Shippers`, and `Employees` tables.

SELECT o.OrderID, OrderDate, s.ShipperName, e.FirstName, e.LastName
FROM Orders AS o
    JOIN Shippers AS s ON s.ShipperID = o.ShipperID
    JOIN Employees AS e ON e.EmployeeID = o.EmployeeID

-- ### 9. Orders by Category with Total Quantities
-- Write a query to display the `OrderID`, `CategoryName`, and total `Quantity` of products ordered in each category. Use the `Orders`, `OrderDetails`, `Products`, and `Categories` tables. Group by `CategoryName`.
SELECT o.OrderID, cg.CategoryName, SUM(od.Quantity) AS TotalQuantity
FROM Orders AS o
    JOIN OrderDetails AS od ON o.OrderID = od.OrderID
    JOIN Products AS p ON od.ProductID = p.ProductID
    JOIN Categories AS cg ON cg.CategoryID = p.CategoryID
GROUP BY o.OrderID, cg.CategoryName

-- ### 10. Customers Who Ordered Specific Products
-- Write a query to find all `CustomerName` and `OrderID` entries for a specific `ProductName`. Use the `Orders`, `OrderDetails`, `Products`, and `Customers` tables.

SELECT c.CustomerName, o.OrderID
FROM Orders AS o
    JOIN OrderDetails AS od ON od.OrderID = o.OrderID
    JOIN Products AS p ON p.ProductID = od.ProductID
    JOIN Customers AS c ON c.CustomerID = o.CustomerID
WHERE p.ProductName = 'Chocolade'

-- ### 11. Suppliers for Products in Each Category
-- Write a query to display the `CategoryName`, `SupplierName`, and `ProductName`. Use the `Categories`, `Suppliers`, and `Products` tables.

SELECT c.CategoryName, s.SupplierName, p.ProductName
FROM Categories AS c
    JOIN Products AS p ON p.CategoryID = c.CategoryID
    JOIN Suppliers AS s ON s.SupplierID = p.SupplierID

-- ### 12. Orders Grouped by Employee with Total Sales
-- Write a query to list the `FirstName` and `LastName` of employees and the total sales (sum of product prices) they managed. Use the `Orders`, `OrderDetails`, and `Employees` tables. Group by employee.

SELECT e.FirstName, e.LastName, SUM(od.Quantity * p.Price)
FROM Employees AS e
    JOIN Orders AS o ON o.EmployeeID = e.EmployeeID
    JOIN OrderDetails AS od ON od.OrderID = o.OrderID
    JOIN Products AS p ON p.ProductID = od.ProductID
GROUP BY e.FirstName, e.LastName

-- ### 13. List of Products That Have Never Been Ordered
-- Write a query to find all `ProductName` entries that are not present in the `OrderDetails` table. Use the `Products` and `OrderDetails` tables.

SELECT p.ProductName
FROM Products AS p
    JOIN OrderDetails AS od ON od.ProductID = p.ProductID
WHERE p.ProductID NOT IN (SELECT DISTINCT ProductID
FROM OrderDetails)

-- ### 14. List All Orders Shipped by a Specific Shipper
-- Write a query to display all `OrderID`, `OrderDate`, and `CustomerName` entries where the order was shipped by a specific `ShipperName`. Use the `Orders`, `Customers`, and `Shippers` tables.

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Orders AS o
    JOIN Customers AS c ON c.CustomerID = o.CustomerID
    JOIN Shippers AS s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName = 'Speedy Express'
